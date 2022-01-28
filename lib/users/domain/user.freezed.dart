// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'user.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

User _$UserFromJson(Map<String, dynamic> json) {
  return _User.fromJson(json);
}

/// @nodoc
class _$UserTearOff {
  const _$UserTearOff();

  _User call(
      {required String login,
      required int id,
      String? name,
      required String avatar_url,
      required String followers_url,
      String? company,
      String? bio,
      String? location,
      int? followers,
      int? following,
      int? public_repos}) {
    return _User(
      login: login,
      id: id,
      name: name,
      avatar_url: avatar_url,
      followers_url: followers_url,
      company: company,
      bio: bio,
      location: location,
      followers: followers,
      following: following,
      public_repos: public_repos,
    );
  }

  User fromJson(Map<String, Object?> json) {
    return User.fromJson(json);
  }
}

/// @nodoc
const $User = _$UserTearOff();

/// @nodoc
mixin _$User {
  String get login => throw _privateConstructorUsedError;
  int get id => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  String get avatar_url => throw _privateConstructorUsedError;
  String get followers_url => throw _privateConstructorUsedError;
  String? get company => throw _privateConstructorUsedError;
  String? get bio => throw _privateConstructorUsedError;
  String? get location => throw _privateConstructorUsedError;
  int? get followers => throw _privateConstructorUsedError;
  int? get following => throw _privateConstructorUsedError;
  int? get public_repos => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UserCopyWith<User> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserCopyWith<$Res> {
  factory $UserCopyWith(User value, $Res Function(User) then) =
      _$UserCopyWithImpl<$Res>;
  $Res call(
      {String login,
      int id,
      String? name,
      String avatar_url,
      String followers_url,
      String? company,
      String? bio,
      String? location,
      int? followers,
      int? following,
      int? public_repos});
}

/// @nodoc
class _$UserCopyWithImpl<$Res> implements $UserCopyWith<$Res> {
  _$UserCopyWithImpl(this._value, this._then);

  final User _value;
  // ignore: unused_field
  final $Res Function(User) _then;

  @override
  $Res call({
    Object? login = freezed,
    Object? id = freezed,
    Object? name = freezed,
    Object? avatar_url = freezed,
    Object? followers_url = freezed,
    Object? company = freezed,
    Object? bio = freezed,
    Object? location = freezed,
    Object? followers = freezed,
    Object? following = freezed,
    Object? public_repos = freezed,
  }) {
    return _then(_value.copyWith(
      login: login == freezed
          ? _value.login
          : login // ignore: cast_nullable_to_non_nullable
              as String,
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      avatar_url: avatar_url == freezed
          ? _value.avatar_url
          : avatar_url // ignore: cast_nullable_to_non_nullable
              as String,
      followers_url: followers_url == freezed
          ? _value.followers_url
          : followers_url // ignore: cast_nullable_to_non_nullable
              as String,
      company: company == freezed
          ? _value.company
          : company // ignore: cast_nullable_to_non_nullable
              as String?,
      bio: bio == freezed
          ? _value.bio
          : bio // ignore: cast_nullable_to_non_nullable
              as String?,
      location: location == freezed
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as String?,
      followers: followers == freezed
          ? _value.followers
          : followers // ignore: cast_nullable_to_non_nullable
              as int?,
      following: following == freezed
          ? _value.following
          : following // ignore: cast_nullable_to_non_nullable
              as int?,
      public_repos: public_repos == freezed
          ? _value.public_repos
          : public_repos // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
abstract class _$UserCopyWith<$Res> implements $UserCopyWith<$Res> {
  factory _$UserCopyWith(_User value, $Res Function(_User) then) =
      __$UserCopyWithImpl<$Res>;
  @override
  $Res call(
      {String login,
      int id,
      String? name,
      String avatar_url,
      String followers_url,
      String? company,
      String? bio,
      String? location,
      int? followers,
      int? following,
      int? public_repos});
}

/// @nodoc
class __$UserCopyWithImpl<$Res> extends _$UserCopyWithImpl<$Res>
    implements _$UserCopyWith<$Res> {
  __$UserCopyWithImpl(_User _value, $Res Function(_User) _then)
      : super(_value, (v) => _then(v as _User));

  @override
  _User get _value => super._value as _User;

  @override
  $Res call({
    Object? login = freezed,
    Object? id = freezed,
    Object? name = freezed,
    Object? avatar_url = freezed,
    Object? followers_url = freezed,
    Object? company = freezed,
    Object? bio = freezed,
    Object? location = freezed,
    Object? followers = freezed,
    Object? following = freezed,
    Object? public_repos = freezed,
  }) {
    return _then(_User(
      login: login == freezed
          ? _value.login
          : login // ignore: cast_nullable_to_non_nullable
              as String,
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      avatar_url: avatar_url == freezed
          ? _value.avatar_url
          : avatar_url // ignore: cast_nullable_to_non_nullable
              as String,
      followers_url: followers_url == freezed
          ? _value.followers_url
          : followers_url // ignore: cast_nullable_to_non_nullable
              as String,
      company: company == freezed
          ? _value.company
          : company // ignore: cast_nullable_to_non_nullable
              as String?,
      bio: bio == freezed
          ? _value.bio
          : bio // ignore: cast_nullable_to_non_nullable
              as String?,
      location: location == freezed
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as String?,
      followers: followers == freezed
          ? _value.followers
          : followers // ignore: cast_nullable_to_non_nullable
              as int?,
      following: following == freezed
          ? _value.following
          : following // ignore: cast_nullable_to_non_nullable
              as int?,
      public_repos: public_repos == freezed
          ? _value.public_repos
          : public_repos // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_User extends _User {
  const _$_User(
      {required this.login,
      required this.id,
      this.name,
      required this.avatar_url,
      required this.followers_url,
      this.company,
      this.bio,
      this.location,
      this.followers,
      this.following,
      this.public_repos})
      : super._();

  factory _$_User.fromJson(Map<String, dynamic> json) => _$$_UserFromJson(json);

  @override
  final String login;
  @override
  final int id;
  @override
  final String? name;
  @override
  final String avatar_url;
  @override
  final String followers_url;
  @override
  final String? company;
  @override
  final String? bio;
  @override
  final String? location;
  @override
  final int? followers;
  @override
  final int? following;
  @override
  final int? public_repos;

  @override
  String toString() {
    return 'User(login: $login, id: $id, name: $name, avatar_url: $avatar_url, followers_url: $followers_url, company: $company, bio: $bio, location: $location, followers: $followers, following: $following, public_repos: $public_repos)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _User &&
            const DeepCollectionEquality().equals(other.login, login) &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality()
                .equals(other.avatar_url, avatar_url) &&
            const DeepCollectionEquality()
                .equals(other.followers_url, followers_url) &&
            const DeepCollectionEquality().equals(other.company, company) &&
            const DeepCollectionEquality().equals(other.bio, bio) &&
            const DeepCollectionEquality().equals(other.location, location) &&
            const DeepCollectionEquality().equals(other.followers, followers) &&
            const DeepCollectionEquality().equals(other.following, following) &&
            const DeepCollectionEquality()
                .equals(other.public_repos, public_repos));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(login),
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(name),
      const DeepCollectionEquality().hash(avatar_url),
      const DeepCollectionEquality().hash(followers_url),
      const DeepCollectionEquality().hash(company),
      const DeepCollectionEquality().hash(bio),
      const DeepCollectionEquality().hash(location),
      const DeepCollectionEquality().hash(followers),
      const DeepCollectionEquality().hash(following),
      const DeepCollectionEquality().hash(public_repos));

  @JsonKey(ignore: true)
  @override
  _$UserCopyWith<_User> get copyWith =>
      __$UserCopyWithImpl<_User>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_UserToJson(this);
  }
}

abstract class _User extends User {
  const factory _User(
      {required String login,
      required int id,
      String? name,
      required String avatar_url,
      required String followers_url,
      String? company,
      String? bio,
      String? location,
      int? followers,
      int? following,
      int? public_repos}) = _$_User;
  const _User._() : super._();

  factory _User.fromJson(Map<String, dynamic> json) = _$_User.fromJson;

  @override
  String get login;
  @override
  int get id;
  @override
  String? get name;
  @override
  String get avatar_url;
  @override
  String get followers_url;
  @override
  String? get company;
  @override
  String? get bio;
  @override
  String? get location;
  @override
  int? get followers;
  @override
  int? get following;
  @override
  int? get public_repos;
  @override
  @JsonKey(ignore: true)
  _$UserCopyWith<_User> get copyWith => throw _privateConstructorUsedError;
}
