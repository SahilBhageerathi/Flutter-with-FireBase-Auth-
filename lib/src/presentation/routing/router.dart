import 'package:auto_route/auto_route.dart';
import 'package:sample_1/src/presentation/routing/router.gr.dart';

@AutoRouterConfig(replaceInRouteName: "Route")
class AppRouter extends $AppRouter {

  @override
  RouteType get defaultRouteType => const RouteType.adaptive();

  @override
  List<AutoRoute> get routes => [

 AutoRoute(page: SplashScreenRoute.page,path: '/'),
 AutoRoute(page: OnBoardingScreenRoute.page),

  ];
}