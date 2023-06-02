// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i3;
import 'package:exchange_app/features/exchange_rates/screen/currency_detail_screen.dart'
    as _i2;
import 'package:exchange_app/features/exchange_rates/screen/home_screen.dart'
    as _i1;
import 'package:flutter/material.dart' as _i4;

abstract class $AppRouter extends _i3.RootStackRouter {
  $AppRouter({super.navigatorKey});

  @override
  final Map<String, _i3.PageFactory> pagesMap = {
    HomeScreen.name: (routeData) {
      final args = routeData.argsAs<HomeScreenArgs>(
          orElse: () => const HomeScreenArgs());
      return _i3.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i1.HomeScreen(key: args.key),
      );
    },
    CurrencyDetailScreen.name: (routeData) {
      return _i3.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i2.CurrencyDetailScreen(),
      );
    },
  };
}

/// generated route for
/// [_i1.HomeScreen]
class HomeScreen extends _i3.PageRouteInfo<HomeScreenArgs> {
  HomeScreen({
    _i4.Key? key,
    List<_i3.PageRouteInfo>? children,
  }) : super(
          HomeScreen.name,
          args: HomeScreenArgs(key: key),
          initialChildren: children,
        );

  static const String name = 'HomeScreen';

  static const _i3.PageInfo<HomeScreenArgs> page =
      _i3.PageInfo<HomeScreenArgs>(name);
}

class HomeScreenArgs {
  const HomeScreenArgs({this.key});

  final _i4.Key? key;

  @override
  String toString() {
    return 'HomeScreenArgs{key: $key}';
  }
}

/// generated route for
/// [_i2.CurrencyDetailScreen]
class CurrencyDetailScreen extends _i3.PageRouteInfo<void> {
  const CurrencyDetailScreen({List<_i3.PageRouteInfo>? children})
      : super(
          CurrencyDetailScreen.name,
          initialChildren: children,
        );

  static const String name = 'CurrencyDetailScreen';

  static const _i3.PageInfo<void> page = _i3.PageInfo<void>(name);
}
