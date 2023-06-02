import 'dart:async';

import 'package:flutter/material.dart';
import 'package:location/location.dart';
import 'package:logger/logger.dart';

import '../../../common/services/location_service.dart';
import '../../../common/utils/extension_on_context.dart';

class LocationToggleButton extends StatefulWidget {
  const LocationToggleButton({super.key});

  @override
  State<LocationToggleButton> createState() => _LocationToggleButtonState();
}

class _LocationToggleButtonState extends State<LocationToggleButton> {
  LocationService locationService = LocationService();
  bool _isTracking = false;
  StreamSubscription<LocationData>? _locationSubscription;
  static final Logger _logger = Logger();

  @override
  Widget build(BuildContext context) {
    return SwitchListTile(
      title: Text(
        'Enable location tracking',
        style: context.appTextTheme.locationTextStyle,
      ),
      value: _isTracking,
      onChanged: (bool value) async {
        setState(() {
          _isTracking = value;
        });

        if (_isTracking) {
          bool started = await locationService.startTracking();
          if (started) {
            _locationSubscription = locationService.locationStream.listen(
              (LocationData currentLocation) {
                _logger.i('Latitude: ${currentLocation.latitude}, Longitude: ${currentLocation.longitude}');
                // We can send this data to  mock server
              },
            );
          } else {
            setState(() {
              _isTracking = false;
            });
          }
        } else {
          _locationSubscription?.cancel();
        }
      },
    );
  }
}
