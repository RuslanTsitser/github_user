// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_User _$$_UserFromJson(Map<String, dynamic> json) => _$_User(
      login: json['login'] as String,
      id: json['id'] as int,
      name: json['name'] as String?,
      avatar_url: json['avatar_url'] as String,
      followers_url: json['followers_url'] as String,
      company: json['company'] as String?,
      bio: json['bio'] as String?,
      location: json['location'] as String?,
      followers: json['followers'] as int?,
      following: json['following'] as int?,
      public_repos: json['public_repos'] as int?,
    );

Map<String, dynamic> _$$_UserToJson(_$_User instance) => <String, dynamic>{
      'login': instance.login,
      'id': instance.id,
      'name': instance.name,
      'avatar_url': instance.avatar_url,
      'followers_url': instance.followers_url,
      'company': instance.company,
      'bio': instance.bio,
      'location': instance.location,
      'followers': instance.followers,
      'following': instance.following,
      'public_repos': instance.public_repos,
    };
