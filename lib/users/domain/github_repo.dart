import 'package:freezed_annotation/freezed_annotation.dart';

part 'github_repo.freezed.dart';

part 'github_repo.g.dart';

@freezed
class GithubRepo with _$GithubRepo {
  const GithubRepo._();
  const factory GithubRepo({
    required String name,
    String? description,
    String? pushed_at,
    String? default_branch,
    int? forks_count,
    int? stargazers_count,
    String? language,
  }) = _GithubRepo;

  factory GithubRepo.fromJson(Map<String, dynamic> json) =>
      _$GithubRepoFromJson(json);
}
