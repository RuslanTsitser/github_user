import 'dart:convert';
import 'dart:io';

import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:flutter/services.dart';
import 'package:github_user/auth/domain/auth_failure.dart';
import 'package:github_user/auth/infrastructure/credentials_storage/credentials_storage.dart';
import 'package:github_user/src/const/endpoint.dart';
import 'package:github_user/src/const/github_oauth_credentials.dart';
import 'package:github_user/src/const/url.dart';

import 'package:http/http.dart' as http;
import 'package:oauth2/oauth2.dart' as oauth2;

class GithubAuthenticator {
  final CredentialsStorage _credentialsStorage;
  final Dio _dio;

  GithubAuthenticator(this._credentialsStorage, this._dio);

  static final _authorizationEndPoint = Uri.parse(EndPoint.authorization);
  static final _tokenEndPoint = Uri.parse(EndPoint.token);
  static final _revocationEndPoint = Uri.parse(EndPoint.revocation);
  static final redirectedUrl = Uri.parse(redirectUrl);

  Future<bool> isSignedIn() =>
      getSignedInCredentials().then((credentials) => credentials != null);

  Future<oauth2.Credentials?> getSignedInCredentials() async {
    try {
      final storedCredentials = await _credentialsStorage.read();
      if (storedCredentials != null) {
        if (storedCredentials.canRefresh && storedCredentials.isExpired) {
          final failureOrCredentials = await refresh(storedCredentials);
          return failureOrCredentials.fold((l) => null, (r) => r);
        }
      }
      return storedCredentials;
    } on PlatformException {
      return null;
    }
  }

  Future<Either<AuthFailure, oauth2.Credentials>> refresh(
    oauth2.Credentials credentials,
  ) async {
    try {
      final refreshedCredentials = await credentials.refresh(
        identifier: githubClientId,
        secret: githubClientSecret,
        httpClient: _JsonAcceptingHttpClient(),
      );
      await _credentialsStorage.save(refreshedCredentials);
      return right(refreshedCredentials);
    } on FormatException {
      return left(const AuthFailure.server());
    } on oauth2.AuthorizationException catch (e) {
      return left(AuthFailure.server('${e.error}: ${e.description}'));
    } on PlatformException {
      return left(const AuthFailure.storage());
    }
  }

  oauth2.AuthorizationCodeGrant createGrant() {
    return oauth2.AuthorizationCodeGrant(
      githubClientId,
      _authorizationEndPoint,
      _tokenEndPoint,
      secret: githubClientSecret,
      httpClient: _JsonAcceptingHttpClient(),
    );
  }

  Uri getAuthorizationUrl(oauth2.AuthorizationCodeGrant grant) {
    return grant.getAuthorizationUrl(redirectedUrl, scopes: githubScopes);
  }

  Future<Either<AuthFailure, Unit>> handleAuthorizationResponse(
    oauth2.AuthorizationCodeGrant grant,
    Map<String, String> queryParams,
  ) async {
    try {
      final httpClient = await grant.handleAuthorizationResponse(queryParams);
      await _credentialsStorage.save(httpClient.credentials);
      return right(unit);
    } on FormatException {
      return left(const AuthFailure.server());
    } on oauth2.AuthorizationException catch (e) {
      return left(AuthFailure.server('${e.error}: ${e.description}'));
    } on PlatformException {
      return left(const AuthFailure.storage());
    }
  }

  Future<Either<AuthFailure, Unit>> signOut() async {
    try {
      final accessToken = await _credentialsStorage
          .read()
          .then((credentials) => credentials?.accessToken);
      final usernameAndPassword =
          utf8.fuse(base64).encode('$githubClientId:$githubClientSecret');
      try {
        await _dio.deleteUri(
          _revocationEndPoint,
          data: {
            'access_token': accessToken,
          },
          options: Options(
            headers: {
              'Authorization': 'basic $usernameAndPassword',
            },
          ),
        );
      } on DioError catch (e) {
        if (e.type == DioErrorType.other && e.error is SocketException) {
          // ignoring
        } else {
          rethrow;
        }
      }
      return clearCredentialsStorage();
    } on PlatformException {
      return left(const AuthFailure.storage());
    }
  }

  Future<Either<AuthFailure, Unit>> clearCredentialsStorage() async {
    try {
      await _credentialsStorage.clear();
      return right(unit);
    } on PlatformException {
      return left(const AuthFailure.storage());
    }
  }
}

class _JsonAcceptingHttpClient extends http.BaseClient {
  final _httpClient = http.Client();
  @override
  Future<http.StreamedResponse> send(http.BaseRequest request) {
    request.headers['Accept'] = 'application/json';
    return _httpClient.send(request);
  }
}

class GithubLoginException implements Exception {
  const GithubLoginException(this.message);
  final String message;
  @override
  String toString() => message;
}
