import 'package:auto_route/auto_route.dart';
import 'package:sample_1/src/presentation/routing/router.gr.dart';
import 'package:sample_1/src/presentation/screens/auth/auth.dart';

@AutoRouterConfig(replaceInRouteName: "Route")
class AppRouter extends $AppRouter {

  @override
  RouteType get defaultRouteType => const RouteType.adaptive();

  // dart run build_runner build
  @override
  List<AutoRoute> get routes => [

 AutoRoute(page: SplashScreenRoute.page,path: '/'),
 AutoRoute(page: OnBoardingScreenRoute.page,path: '/onBoarding'),
 AutoRoute(page: AuthPageRoute.page,path:'/auth' ),
 AutoRoute(page: LoginPageRoute.page,path:'/login' ),
 AutoRoute(page: RegisterPageRoute.page,path:'/register' ),
 AutoRoute(page: GeneralPageRoute.page,path:'/general' ),
 AutoRoute(page: PostDetailsPageRoute.page,path:'/postDetails' ),

  ];
}