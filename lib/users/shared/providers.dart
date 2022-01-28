import 'package:github_user/auth/shared/providers.dart';
import 'package:github_user/users/infrastructure/repository.dart';
import 'package:riverpod/riverpod.dart';

final userRepositoryProvider = Provider(
  (ref) => UserRepository(
    ref.watch(credentialsStorageProvider),
  ),
);

final githubReposRepositoryProvider = Provider(
  (ref) => GithubReposRepository(
    ref.watch(credentialsStorageProvider),
  ),
);
