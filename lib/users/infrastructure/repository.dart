import 'package:github_user/auth/infrastructure/credentials_storage/credentials_storage.dart';
import 'package:github_user/src/api.dart';
import 'package:github_user/src/const/endpoint.dart';
import 'package:github_user/users/domain/github_repo.dart';
import 'package:github_user/users/domain/user.dart';

abstract class Repository {
  Future<dynamic> getData();
  Future<dynamic> getSearchData(String login);
}

class UserRepository extends Repository {
  final CredentialsStorage _storage;

  late User _user;

  User get user => _user;

  UserRepository(this._storage);

  @override
  Future<void> getData() async {
    final credentials = await _storage.read();
    final accessToken = credentials!.accessToken;

    final response = await ApiService().getData(EndPoint.user,
        headers: {'Authorization': 'bearer $accessToken'});
    _user = User.fromJson(response.data);
  }

  Future<List<dynamic>> getFollowersData(String login) async {
    final credentials = await _storage.read();
    final accessToken = credentials!.accessToken;

    final response = await ApiService().getData(EndPoint.followers(login),
        headers: {'Authorization': 'bearer $accessToken'});
    final listData = response.data as List;

    List<User> followersRepo = [];

    for (var element in listData) {
      followersRepo.add(User.fromJson(element));
    }

    return listData;
  }

  @override
  Future<List<User>> getSearchData(String login) async {
    final credentials = await _storage.read();
    final accessToken = credentials!.accessToken;

    final response = await ApiService().getData(
      EndPoint.searchUsers,
      headers: {'Authorization': 'bearer $accessToken'},
      queryParameters: {'q': login},
    );
    final listData = response.data['items'] as List;

    List<User> users = [];

    for (var element in listData) {
      users.add(User.fromJson(element));
    }

    return users;
  }
}

class GithubReposRepository extends Repository {
  final CredentialsStorage _storage;

  GithubReposRepository(this._storage);

  @override
  Future<List<GithubRepo>> getData() async {
    final credentials = await _storage.read();
    final accessToken = credentials!.accessToken;

    final response = await ApiService().getData(EndPoint.userRepos,
        headers: {'Authorization': 'bearer $accessToken'});
    final listData = response.data as List;

    List<GithubRepo> githubRepos = [];

    for (var element in listData) {
      githubRepos.add(GithubRepo.fromJson(element));
    }

    return githubRepos;
  }

  @override
  Future<List<GithubRepo>> getSearchData(String login) async {
    final credentials = await _storage.read();
    final accessToken = credentials!.accessToken;

    final response = await ApiService().getData(EndPoint.repos(login),
        headers: {'Authorization': 'bearer $accessToken'});
    final listData = response.data as List;

    List<GithubRepo> githubRepos = [];

    for (var element in listData) {
      githubRepos.add(GithubRepo.fromJson(element));
    }

    return githubRepos;
  }
}
