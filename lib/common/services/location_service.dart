import 'package:location/location.dart';

class LocationService {
  Location location = Location();

  Stream<LocationData> get locationStream => location.onLocationChanged;

  Future<bool> startTracking() async {
    bool serviceEnabled;
    PermissionStatus permissionGranted;

    serviceEnabled = await location.serviceEnabled();
    if (!serviceEnabled) {
      serviceEnabled = await location.requestService();
      if (!serviceEnabled) {
        return false;
      }
    }

    permissionGranted = await location.hasPermission();
    if (permissionGranted == PermissionStatus.denied) {
      permissionGranted = await location.requestPermission();
      if (permissionGranted != PermissionStatus.granted) {
        return false;
      }
    }

    await location.changeSettings(distanceFilter: 2);
    await location.enableBackgroundMode(enable: true);

    return true;
  }

  void stopTracking() {
    location.onLocationChanged.listen((_) {}).cancel();
  }
}
