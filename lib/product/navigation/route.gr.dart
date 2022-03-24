// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************
//
// ignore_for_file: type=lint

import 'package:auto_route/auto_route.dart' as _i7;
import 'package:flutter/material.dart' as _i8;

import '../../view/auth/auth_view.dart' as _i3;
import '../../view/home/views/facility_detail_view.dart' as _i4;
import '../../view/home/views/home_view.dart' as _i2;
import '../../view/home/views/live_camera_view.dart' as _i5;
import '../../view/splash/splash_view.dart' as _i1;
import '../../view/sss/sss_view.dart' as _i6;

class NavigationRoute extends _i7.RootStackRouter {
  NavigationRoute([_i8.GlobalKey<_i8.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i7.PageFactory> pagesMap = {
    SplashView.name: (routeData) {
      return _i7.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i1.SplashView());
    },
    HomeView.name: (routeData) {
      return _i7.CustomPage<dynamic>(
          routeData: routeData,
          child: const _i2.HomeView(),
          transitionsBuilder: _i7.TransitionsBuilders.slideRight,
          opaque: true,
          barrierDismissible: false);
    },
    AuthView.name: (routeData) {
      return _i7.CustomPage<dynamic>(
          routeData: routeData,
          child: const _i3.AuthView(),
          transitionsBuilder: _i7.TransitionsBuilders.slideRight,
          opaque: true,
          barrierDismissible: false);
    },
    FacilityDetail.name: (routeData) {
      final args = routeData.argsAs<FacilityDetailArgs>();
      return _i7.CustomPage<dynamic>(
          routeData: routeData,
          child: _i4.FacilityDetail(
              key: args.key, facilityName: args.facilityName),
          transitionsBuilder: _i7.TransitionsBuilders.fadeIn,
          opaque: true,
          barrierDismissible: false);
    },
    LiveCameraView.name: (routeData) {
      return _i7.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i5.LiveCameraView());
    },
    SSSView.name: (routeData) {
      return _i7.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i6.SSSView());
    }
  };

  @override
  List<_i7.RouteConfig> get routes => [
        _i7.RouteConfig(SplashView.name, path: '/'),
        _i7.RouteConfig(HomeView.name, path: '/home-view'),
        _i7.RouteConfig(AuthView.name, path: '/auth-view'),
        _i7.RouteConfig(FacilityDetail.name, path: '/facility-detail'),
        _i7.RouteConfig(LiveCameraView.name, path: '/live-camera-view'),
        _i7.RouteConfig(SSSView.name, path: '/s-ss-view')
      ];
}

/// generated route for
/// [_i1.SplashView]
class SplashView extends _i7.PageRouteInfo<void> {
  const SplashView() : super(SplashView.name, path: '/');

  static const String name = 'SplashView';
}

/// generated route for
/// [_i2.HomeView]
class HomeView extends _i7.PageRouteInfo<void> {
  const HomeView() : super(HomeView.name, path: '/home-view');

  static const String name = 'HomeView';
}

/// generated route for
/// [_i3.AuthView]
class AuthView extends _i7.PageRouteInfo<void> {
  const AuthView() : super(AuthView.name, path: '/auth-view');

  static const String name = 'AuthView';
}

/// generated route for
/// [_i4.FacilityDetail]
class FacilityDetail extends _i7.PageRouteInfo<FacilityDetailArgs> {
  FacilityDetail({_i8.Key? key, required String facilityName})
      : super(FacilityDetail.name,
            path: '/facility-detail',
            args: FacilityDetailArgs(key: key, facilityName: facilityName));

  static const String name = 'FacilityDetail';
}

class FacilityDetailArgs {
  const FacilityDetailArgs({this.key, required this.facilityName});

  final _i8.Key? key;

  final String facilityName;

  @override
  String toString() {
    return 'FacilityDetailArgs{key: $key, facilityName: $facilityName}';
  }
}

/// generated route for
/// [_i5.LiveCameraView]
class LiveCameraView extends _i7.PageRouteInfo<void> {
  const LiveCameraView()
      : super(LiveCameraView.name, path: '/live-camera-view');

  static const String name = 'LiveCameraView';
}

/// generated route for
/// [_i6.SSSView]
class SSSView extends _i7.PageRouteInfo<void> {
  const SSSView() : super(SSSView.name, path: '/s-ss-view');

  static const String name = 'SSSView';
}
