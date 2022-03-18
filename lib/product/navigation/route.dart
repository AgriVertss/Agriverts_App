import 'package:agriverts/view/auth/auth_view.dart';
import 'package:agriverts/view/home/views/facility_detail_view.dart';
import 'package:agriverts/view/home/views/home_view.dart';
import 'package:agriverts/view/home/views/live_camera_view.dart';
import 'package:agriverts/view/sss/sss_view.dart';
import 'package:agriverts/view/splash/splash_view.dart';
import 'package:auto_route/auto_route.dart';

@MaterialAutoRouter(
  replaceInRouteName: 'Route,Route',
  routes: <AutoRoute>[
    AutoRoute(page: SplashView, initial: true),
    AutoRoute(page: HomeView),
    AutoRoute(page: AuthView),
    AutoRoute(page: FacilityDetail),
    AutoRoute(page: LiveCameraView),
    AutoRoute(page: SSSView),
  ],
)
class $NavigationRoute {}
