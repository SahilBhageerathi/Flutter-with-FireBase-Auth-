// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i6;
import 'package:sample_1/src/presentation/screens/auth/auth.dart' as _i1;
import 'package:sample_1/src/presentation/screens/auth/login/login.dart' as _i2;
import 'package:sample_1/src/presentation/screens/auth/register/register.dart'
    as _i4;
import 'package:sample_1/src/presentation/screens/onboarding/onboarding_screen.dart'
    as _i3;
import 'package:sample_1/src/presentation/screens/splash_screens/splash_screen.dart'
    as _i5;

abstract class $AppRouter extends _i6.RootStackRouter {
  $AppRouter({super.navigatorKey});

  @override
  final Map<String, _i6.PageFactory> pagesMap = {
    AuthPageRoute.name: (routeData) {
      return _i6.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i1.AuthPage(),
      );
    },
    LoginPageRoute.name: (routeData) {
      return _i6.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i2.LoginPage(),
      );
    },
    OnBoardingScreenRoute.name: (routeData) {
      return _i6.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i3.OnBoardingScreen(),
      );
    },
    RegisterPageRoute.name: (routeData) {
      return _i6.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i4.RegisterPage(),
      );
    },
    SplashScreenRoute.name: (routeData) {
      return _i6.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i5.SplashScreen(),
      );
    },
  };
}

/// generated route for
/// [_i1.AuthPage]
class AuthPageRoute extends _i6.PageRouteInfo<void> {
  const AuthPageRoute({List<_i6.PageRouteInfo>? children})
      : super(
          AuthPageRoute.name,
          initialChildren: children,
        );

  static const String name = 'AuthPageRoute';

  static const _i6.PageInfo<void> page = _i6.PageInfo<void>(name);
}

/// generated route for
/// [_i2.LoginPage]
class LoginPageRoute extends _i6.PageRouteInfo<void> {
  const LoginPageRoute({List<_i6.PageRouteInfo>? children})
      : super(
          LoginPageRoute.name,
          initialChildren: children,
        );

  static const String name = 'LoginPageRoute';

  static const _i6.PageInfo<void> page = _i6.PageInfo<void>(name);
}

/// generated route for
/// [_i3.OnBoardingScreen]
class OnBoardingScreenRoute extends _i6.PageRouteInfo<void> {
  const OnBoardingScreenRoute({List<_i6.PageRouteInfo>? children})
      : super(
          OnBoardingScreenRoute.name,
          initialChildren: children,
        );

  static const String name = 'OnBoardingScreenRoute';

  static const _i6.PageInfo<void> page = _i6.PageInfo<void>(name);
}

/// generated route for
/// [_i4.RegisterPage]
class RegisterPageRoute extends _i6.PageRouteInfo<void> {
  const RegisterPageRoute({List<_i6.PageRouteInfo>? children})
      : super(
          RegisterPageRoute.name,
          initialChildren: children,
        );

  static const String name = 'RegisterPageRoute';

  static const _i6.PageInfo<void> page = _i6.PageInfo<void>(name);
}

/// generated route for
/// [_i5.SplashScreen]
class SplashScreenRoute extends _i6.PageRouteInfo<void> {
  const SplashScreenRoute({List<_i6.PageRouteInfo>? children})
      : super(
          SplashScreenRoute.name,
          initialChildren: children,
        );

  static const String name = 'SplashScreenRoute';

  static const _i6.PageInfo<void> page = _i6.PageInfo<void>(name);
}
