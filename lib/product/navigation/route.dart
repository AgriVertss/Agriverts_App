import 'package:agriverts/view/addFacility/add_facility_vew.dart';
import 'package:agriverts/view/addFacility/qr_scanner_view.dart';
import 'package:agriverts/view/auth/auth_view.dart';
import 'package:agriverts/view/auth/email_confirmation_view.dart';
import 'package:agriverts/view/faq/faq_view.dart';
import 'package:agriverts/view/home/views/facility_detail_view.dart';
import 'package:agriverts/view/home/views/home_view.dart';
import 'package:agriverts/view/home/views/live_camera_view.dart';
import 'package:agriverts/view/splash/splash_view.dart';
import 'package:auto_route/auto_route.dart';

@MaterialAutoRouter(
  replaceInRouteName: 'Route,Route',
  routes: <AutoRoute>[
    AutoRoute(page: SplashView, initial: true),
    CustomRoute(page: HomeView,transitionsBuilder: TransitionsBuilders.slideLeft),
    CustomRoute(page: AuthView,transitionsBuilder: TransitionsBuilders.slideRight),
    CustomRoute(page: FacilityDetail,transitionsBuilder: TransitionsBuilders.fadeIn),
    CustomRoute(page: EmailConfirmationView,transitionsBuilder: TransitionsBuilders.slideLeft),
    CustomRoute(page: AddFacilityView,transitionsBuilder: TransitionsBuilders.fadeIn),
    AutoRoute(page: LiveCameraView),
    AutoRoute(page: FAQView),
    AutoRoute(page: QRScannerView),
  ],
)
class $NavigationRoute {}
