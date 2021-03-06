// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************
//
// ignore_for_file: type=lint

import 'package:auto_route/auto_route.dart' as _i5;
import 'package:flutter/material.dart' as _i6;

import '../authorization_page.dart' as _i3;
import '../default_page.dart' as _i1;
import '../login_page.dart' as _i2;
import '../main_page.dart' as _i4;

class AppRouter extends _i5.RootStackRouter {
  AppRouter([_i6.GlobalKey<_i6.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i5.PageFactory> pagesMap = {
    DefaultRoute.name: (routeData) {
      return _i5.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i1.DefaultPage());
    },
    LoginRoute.name: (routeData) {
      return _i5.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i2.LoginPage());
    },
    AuthorizationRoute.name: (routeData) {
      final args = routeData.argsAs<AuthorizationRouteArgs>();
      return _i5.MaterialPageX<dynamic>(
          routeData: routeData,
          child: _i3.AuthorizationPage(
              key: args.key,
              authorizationUrl: args.authorizationUrl,
              onAuthorizationCodeRedirectAttempt:
                  args.onAuthorizationCodeRedirectAttempt));
    },
    MainRoute.name: (routeData) {
      return _i5.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i4.MainPage());
    }
  };

  @override
  List<_i5.RouteConfig> get routes => [
        _i5.RouteConfig(DefaultRoute.name, path: '/'),
        _i5.RouteConfig(LoginRoute.name, path: '/login'),
        _i5.RouteConfig(AuthorizationRoute.name, path: '/auth'),
        _i5.RouteConfig(MainRoute.name, path: '/main-screen')
      ];
}

/// generated route for
/// [_i1.DefaultPage]
class DefaultRoute extends _i5.PageRouteInfo<void> {
  const DefaultRoute() : super(DefaultRoute.name, path: '/');

  static const String name = 'DefaultRoute';
}

/// generated route for
/// [_i2.LoginPage]
class LoginRoute extends _i5.PageRouteInfo<void> {
  const LoginRoute() : super(LoginRoute.name, path: '/login');

  static const String name = 'LoginRoute';
}

/// generated route for
/// [_i3.AuthorizationPage]
class AuthorizationRoute extends _i5.PageRouteInfo<AuthorizationRouteArgs> {
  AuthorizationRoute(
      {_i6.Key? key,
      required Uri authorizationUrl,
      required void Function(Uri) onAuthorizationCodeRedirectAttempt})
      : super(AuthorizationRoute.name,
            path: '/auth',
            args: AuthorizationRouteArgs(
                key: key,
                authorizationUrl: authorizationUrl,
                onAuthorizationCodeRedirectAttempt:
                    onAuthorizationCodeRedirectAttempt));

  static const String name = 'AuthorizationRoute';
}

class AuthorizationRouteArgs {
  const AuthorizationRouteArgs(
      {this.key,
      required this.authorizationUrl,
      required this.onAuthorizationCodeRedirectAttempt});

  final _i6.Key? key;

  final Uri authorizationUrl;

  final void Function(Uri) onAuthorizationCodeRedirectAttempt;

  @override
  String toString() {
    return 'AuthorizationRouteArgs{key: $key, authorizationUrl: $authorizationUrl, onAuthorizationCodeRedirectAttempt: $onAuthorizationCodeRedirectAttempt}';
  }
}

/// generated route for
/// [_i4.MainPage]
class MainRoute extends _i5.PageRouteInfo<void> {
  const MainRoute() : super(MainRoute.name, path: '/main-screen');

  static const String name = 'MainRoute';
}
