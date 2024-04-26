// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i7;
import 'package:sample_1/src/presentation/screens/auth/auth.dart' as _i1;
import 'package:sample_1/src/presentation/screens/auth/login/login.dart' as _i3;
import 'package:sample_1/src/presentation/screens/auth/register/register.dart'
    as _i5;
import 'package:sample_1/src/presentation/screens/general/general.dart' as _i2;
import 'package:sample_1/src/presentation/screens/onboarding/onboarding_screen.dart'
    as _i4;
import 'package:sample_1/src/presentation/screens/splash_screens/splash_screen.dart'
    as _i6;

abstract class $AppRouter extends _i7.RootStackRouter {
  $AppRouter({super.navigatorKey});

  @override
  final Map<String, _i7.PageFactory> pagesMap = {
    AuthPageRoute.name: (routeData) {
      return _i7.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i1.AuthPage(),
      );
    },
    GeneralPageRoute.name: (routeData) {
      return _i7.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i2.GeneralPage(),
      );
    },
    LoginPageRoute.name: (routeData) {
      return _i7.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i3.LoginPage(),
      );
    },
    OnBoardingScreenRoute.name: (routeData) {
      return _i7.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i4.OnBoardingScreen(),
      );
    },
    RegisterPageRoute.name: (routeData) {
      return _i7.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i5.RegisterPage(),
      );
    },
    SplashScreenRoute.name: (routeData) {
      return _i7.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i6.SplashScreen(),
      );
    },
  };
}

/// generated route for
/// [_i1.AuthPage]
class AuthPageRoute extends _i7.PageRouteInfo<void> {
  const AuthPageRoute({List<_i7.PageRouteInfo>? children})
      : super(
          AuthPageRoute.name,
          initialChildren: children,
        );

  static const String name = 'AuthPageRoute';

  static const _i7.PageInfo<void> page = _i7.PageInfo<void>(name);
}

/// generated route for
/// [_i2.GeneralPage]
class GeneralPageRoute extends _i7.PageRouteInfo<void> {
  const GeneralPageRoute({List<_i7.PageRouteInfo>? children})
      : super(
          GeneralPageRoute.name,
          initialChildren: children,
        );

  static const String name = 'GeneralPageRoute';

  static const _i7.PageInfo<void> page = _i7.PageInfo<void>(name);
}

/// generated route for
/// [_i3.LoginPage]
class LoginPageRoute extends _i7.PageRouteInfo<void> {
  const LoginPageRoute({List<_i7.PageRouteInfo>? children})
      : super(
          LoginPageRoute.name,
          initialChildren: children,
        );

  static const String name = 'LoginPageRoute';

  static const _i7.PageInfo<void> page = _i7.PageInfo<void>(name);
}

/// generated route for
/// [_i4.OnBoardingScreen]
class OnBoardingScreenRoute extends _i7.PageRouteInfo<void> {
  const OnBoardingScreenRoute({List<_i7.PageRouteInfo>? children})
      : super(
          OnBoardingScreenRoute.name,
          initialChildren: children,
        );

  static const String name = 'OnBoardingScreenRoute';

  static const _i7.PageInfo<void> page = _i7.PageInfo<void>(name);
}

/// generated route for
/// [_i5.RegisterPage]
class RegisterPageRoute extends _i7.PageRouteInfo<void> {
  const RegisterPageRoute({List<_i7.PageRouteInfo>? children})
      : super(
          RegisterPageRoute.name,
          initialChildren: children,
        );

  static const String name = 'RegisterPageRoute';

  static const _i7.PageInfo<void> page = _i7.PageInfo<void>(name);
}

/// generated route for
/// [_i6.SplashScreen]
class SplashScreenRoute extends _i7.PageRouteInfo<void> {
  const SplashScreenRoute({List<_i7.PageRouteInfo>? children})
      : super(
          SplashScreenRoute.name,
          initialChildren: children,
        );

  static const String name = 'SplashScreenRoute';

  static const _i7.PageInfo<void> page = _i7.PageInfo<void>(name);
}
