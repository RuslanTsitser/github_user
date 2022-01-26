import 'package:github_user/src/const/github_oauth_credentials.dart';
import 'package:github_user/src/const/url.dart';

class EndPoint {
  static const user = apiBaseUrl + '/user';

  static const searchUsers = apiBaseUrl + '/search/users';

  static const users = apiBaseUrl + '/users';

  static const authorization = baseUrl + '/login/oauth/authorize';

  static const token = baseUrl + '/login/oauth/access_token';

  static const revocation = apiBaseUrl + '/applications/$githubClientId/token';
}
