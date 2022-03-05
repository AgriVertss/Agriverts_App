import 'package:agriverts/view/auth/auth_view.dart';
import 'package:agriverts/view/home/facility_detail_view.dart';
import 'package:agriverts/view/home/home_view.dart';
import 'package:agriverts/view/splash/splash_view.dart';
import 'package:auto_route/auto_route.dart';

@MaterialAutoRouter(
  replaceInRouteName: 'Route,Route',
  routes: <AutoRoute>[
    AutoRoute(page: SplashView, initial: true),
    AutoRoute(page: HomeView),
    AutoRoute(page: AuthView),
    AutoRoute(page: FacilityDetail),
  ],
)
class $NavigationRoute {}
