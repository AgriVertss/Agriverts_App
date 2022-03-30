// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************
//
// ignore_for_file: type=lint

import 'package:auto_route/auto_route.dart' as _i11;
import 'package:flutter/material.dart' as _i12;

import '../../view/addFacility/add_facility_vew.dart' as _i6;
import '../../view/addFacility/qr_scanner_view.dart' as _i10;
import '../../view/auth/auth_view.dart' as _i3;
import '../../view/auth/email_confirmation_view.dart' as _i5;
import '../../view/faq/faq_view.dart' as _i9;
import '../../view/home/views/facility_detail_view.dart' as _i4;
import '../../view/home/views/home_view.dart' as _i2;
import '../../view/home/views/live_camera_view.dart' as _i8;
import '../../view/mapView/map_view.dart' as _i7;
import '../../view/splash/splash_view.dart' as _i1;

class NavigationRoute extends _i11.RootStackRouter {
  NavigationRoute([_i12.GlobalKey<_i12.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i11.PageFactory> pagesMap = {
    SplashView.name: (routeData) {
      return _i11.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i1.SplashView());
    },
    HomeView.name: (routeData) {
      return _i11.CustomPage<dynamic>(
          routeData: routeData,
          child: const _i2.HomeView(),
          transitionsBuilder: _i11.TransitionsBuilders.slideLeft,
          opaque: true,
          barrierDismissible: false);
    },
    AuthView.name: (routeData) {
      return _i11.CustomPage<dynamic>(
          routeData: routeData,
          child: const _i3.AuthView(),
          transitionsBuilder: _i11.TransitionsBuilders.slideRight,
          opaque: true,
          barrierDismissible: false);
    },
    FacilityDetail.name: (routeData) {
      final args = routeData.argsAs<FacilityDetailArgs>();
      return _i11.CustomPage<dynamic>(
          routeData: routeData,
          child: _i4.FacilityDetail(
              key: args.key, facilityName: args.facilityName),
          transitionsBuilder: _i11.TransitionsBuilders.fadeIn,
          opaque: true,
          barrierDismissible: false);
    },
    EmailConfirmationView.name: (routeData) {
      return _i11.CustomPage<dynamic>(
          routeData: routeData,
          child: const _i5.EmailConfirmationView(),
          transitionsBuilder: _i11.TransitionsBuilders.slideLeft,
          opaque: true,
          barrierDismissible: false);
    },
    AddFacilityView.name: (routeData) {
      final args = routeData.argsAs<AddFacilityViewArgs>(
          orElse: () => const AddFacilityViewArgs());
      return _i11.CustomPage<dynamic>(
          routeData: routeData,
          child: _i6.AddFacilityView(key: args.key),
          transitionsBuilder: _i11.TransitionsBuilders.fadeIn,
          opaque: true,
          barrierDismissible: false);
    },
    MapView.name: (routeData) {
      return _i11.CustomPage<dynamic>(
          routeData: routeData,
          child: const _i7.MapView(),
          transitionsBuilder: _i11.TransitionsBuilders.slideLeft,
          opaque: true,
          barrierDismissible: false);
    },
    LiveCameraView.name: (routeData) {
      return _i11.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i8.LiveCameraView());
    },
    FAQView.name: (routeData) {
      return _i11.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i9.FAQView());
    },
    QRScannerView.name: (routeData) {
      return _i11.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i10.QRScannerView());
    }
  };

  @override
  List<_i11.RouteConfig> get routes => [
        _i11.RouteConfig(SplashView.name, path: '/'),
        _i11.RouteConfig(HomeView.name, path: '/home-view'),
        _i11.RouteConfig(AuthView.name, path: '/auth-view'),
        _i11.RouteConfig(FacilityDetail.name, path: '/facility-detail'),
        _i11.RouteConfig(EmailConfirmationView.name,
            path: '/email-confirmation-view'),
        _i11.RouteConfig(AddFacilityView.name, path: '/add-facility-view'),
        _i11.RouteConfig(MapView.name, path: '/map-view'),
        _i11.RouteConfig(LiveCameraView.name, path: '/live-camera-view'),
        _i11.RouteConfig(FAQView.name, path: '/f-aq-view'),
        _i11.RouteConfig(QRScannerView.name, path: '/q-rscanner-view')
      ];
}

/// generated route for
/// [_i1.SplashView]
class SplashView extends _i11.PageRouteInfo<void> {
  const SplashView() : super(SplashView.name, path: '/');

  static const String name = 'SplashView';
}

/// generated route for
/// [_i2.HomeView]
class HomeView extends _i11.PageRouteInfo<void> {
  const HomeView() : super(HomeView.name, path: '/home-view');

  static const String name = 'HomeView';
}

/// generated route for
/// [_i3.AuthView]
class AuthView extends _i11.PageRouteInfo<void> {
  const AuthView() : super(AuthView.name, path: '/auth-view');

  static const String name = 'AuthView';
}

/// generated route for
/// [_i4.FacilityDetail]
class FacilityDetail extends _i11.PageRouteInfo<FacilityDetailArgs> {
  FacilityDetail({_i12.Key? key, required String facilityName})
      : super(FacilityDetail.name,
            path: '/facility-detail',
            args: FacilityDetailArgs(key: key, facilityName: facilityName));

  static const String name = 'FacilityDetail';
}

class FacilityDetailArgs {
  const FacilityDetailArgs({this.key, required this.facilityName});

  final _i12.Key? key;

  final String facilityName;

  @override
  String toString() {
    return 'FacilityDetailArgs{key: $key, facilityName: $facilityName}';
  }
}

/// generated route for
/// [_i5.EmailConfirmationView]
class EmailConfirmationView extends _i11.PageRouteInfo<void> {
  const EmailConfirmationView()
      : super(EmailConfirmationView.name, path: '/email-confirmation-view');

  static const String name = 'EmailConfirmationView';
}

/// generated route for
/// [_i6.AddFacilityView]
class AddFacilityView extends _i11.PageRouteInfo<AddFacilityViewArgs> {
  AddFacilityView({_i12.Key? key})
      : super(AddFacilityView.name,
            path: '/add-facility-view', args: AddFacilityViewArgs(key: key));

  static const String name = 'AddFacilityView';
}

class AddFacilityViewArgs {
  const AddFacilityViewArgs({this.key});

  final _i12.Key? key;

  @override
  String toString() {
    return 'AddFacilityViewArgs{key: $key}';
  }
}

/// generated route for
/// [_i7.MapView]
class MapView extends _i11.PageRouteInfo<void> {
  const MapView() : super(MapView.name, path: '/map-view');

  static const String name = 'MapView';
}

/// generated route for
/// [_i8.LiveCameraView]
class LiveCameraView extends _i11.PageRouteInfo<void> {
  const LiveCameraView()
      : super(LiveCameraView.name, path: '/live-camera-view');

  static const String name = 'LiveCameraView';
}

/// generated route for
/// [_i9.FAQView]
class FAQView extends _i11.PageRouteInfo<void> {
  const FAQView() : super(FAQView.name, path: '/f-aq-view');

  static const String name = 'FAQView';
}

/// generated route for
/// [_i10.QRScannerView]
class QRScannerView extends _i11.PageRouteInfo<void> {
  const QRScannerView() : super(QRScannerView.name, path: '/q-rscanner-view');

  static const String name = 'QRScannerView';
}
