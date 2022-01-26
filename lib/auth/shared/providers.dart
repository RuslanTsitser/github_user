import 'package:dio/dio.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:github_user/auth/application/auth_notifier.dart';
import 'package:github_user/auth/infrastructure/credentials_storage/credentials_storage.dart';
import 'package:github_user/auth/infrastructure/credentials_storage/secure_credentials_storage.dart';
import 'package:github_user/auth/infrastructure/github_authenticator.dart';
import 'package:github_user/auth/infrastructure/oauth2_interceptor.dart';
import 'package:riverpod/riverpod.dart';

final flutterSecureStorageProvider = Provider(
  (ref) => const FlutterSecureStorage(),
);

final credentialsStorageProvider = Provider<CredentialsStorage>(
  (ref) => SecureCredentialsStorage(
    ref.watch(flutterSecureStorageProvider),
  ),
);

final dioForAuthProvider = Provider(
  (ref) => Dio(),
);

final githubAuthenticatorProvider = Provider(
  (ref) => GithubAuthenticator(
    ref.watch(credentialsStorageProvider),
    ref.watch(dioForAuthProvider),
  ),
);

final authNotifierProvider = StateNotifierProvider<AuthNotifier, AuthState>(
  (ref) => AuthNotifier(
    ref.watch(githubAuthenticatorProvider),
  ),
);

final oAuth2InterceptorProvider = Provider(
  (ref) => OAuth2Interceptor(
    ref.watch(githubAuthenticatorProvider),
    ref.watch(dioForAuthProvider),
    ref.watch(authNotifierProvider.notifier),
  ),
);
