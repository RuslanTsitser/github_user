// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'github_repo.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_GithubRepo _$$_GithubRepoFromJson(Map<String, dynamic> json) =>
    _$_GithubRepo(
      name: json['name'] as String,
      description: json['description'] as String?,
      pushed_at: json['pushed_at'] as String?,
      default_branch: json['default_branch'] as String?,
      forks_count: json['forks_count'] as int?,
      stargazers_count: json['stargazers_count'] as int?,
      language: json['language'] as String?,
    );

Map<String, dynamic> _$$_GithubRepoToJson(_$_GithubRepo instance) =>
    <String, dynamic>{
      'name': instance.name,
      'description': instance.description,
      'pushed_at': instance.pushed_at,
      'default_branch': instance.default_branch,
      'forks_count': instance.forks_count,
      'stargazers_count': instance.stargazers_count,
      'language': instance.language,
    };
