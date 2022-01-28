import 'package:auto_route/auto_route.dart';
import 'package:github_user/screen/authorization_page.dart';
import 'package:github_user/screen/default_page.dart';
import 'package:github_user/screen/login_page.dart';
import 'package:github_user/screen/main_page.dart';
import 'package:github_user/screen/user_repos_page.dart';

@MaterialAutoRouter(
  routes: [
    MaterialRoute(page: DefaultPage, initial: true),
    MaterialRoute(page: LoginPage, path: '/login'),
    MaterialRoute(page: AuthorizationPage, path: '/auth'),
    MaterialRoute(page: MainPage, path: '/main-screen'),
  ],
  replaceInRouteName: 'Page,Route',
)
class $AppRouter {}
