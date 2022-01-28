import 'package:freezed_annotation/freezed_annotation.dart';

part 'user.freezed.dart';

part 'user.g.dart';

@freezed
class User with _$User {
  const User._();
  const factory User({
    required String login,
    required int id,
    String? name,
    required String avatar_url,
    required String followers_url,
    String? company,
    String? bio,
    String? location,
    int? followers,
    int? following,
    int? public_repos,
  }) = _User;

  factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);
}
