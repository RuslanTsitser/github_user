// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'github_repo.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

GithubRepo _$GithubRepoFromJson(Map<String, dynamic> json) {
  return _GithubRepo.fromJson(json);
}

/// @nodoc
class _$GithubRepoTearOff {
  const _$GithubRepoTearOff();

  _GithubRepo call(
      {required String name,
      String? description,
      String? pushed_at,
      String? default_branch,
      int? forks_count,
      int? stargazers_count,
      String? language}) {
    return _GithubRepo(
      name: name,
      description: description,
      pushed_at: pushed_at,
      default_branch: default_branch,
      forks_count: forks_count,
      stargazers_count: stargazers_count,
      language: language,
    );
  }

  GithubRepo fromJson(Map<String, Object?> json) {
    return GithubRepo.fromJson(json);
  }
}

/// @nodoc
const $GithubRepo = _$GithubRepoTearOff();

/// @nodoc
mixin _$GithubRepo {
  String get name => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  String? get pushed_at => throw _privateConstructorUsedError;
  String? get default_branch => throw _privateConstructorUsedError;
  int? get forks_count => throw _privateConstructorUsedError;
  int? get stargazers_count => throw _privateConstructorUsedError;
  String? get language => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GithubRepoCopyWith<GithubRepo> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GithubRepoCopyWith<$Res> {
  factory $GithubRepoCopyWith(
          GithubRepo value, $Res Function(GithubRepo) then) =
      _$GithubRepoCopyWithImpl<$Res>;
  $Res call(
      {String name,
      String? description,
      String? pushed_at,
      String? default_branch,
      int? forks_count,
      int? stargazers_count,
      String? language});
}

/// @nodoc
class _$GithubRepoCopyWithImpl<$Res> implements $GithubRepoCopyWith<$Res> {
  _$GithubRepoCopyWithImpl(this._value, this._then);

  final GithubRepo _value;
  // ignore: unused_field
  final $Res Function(GithubRepo) _then;

  @override
  $Res call({
    Object? name = freezed,
    Object? description = freezed,
    Object? pushed_at = freezed,
    Object? default_branch = freezed,
    Object? forks_count = freezed,
    Object? stargazers_count = freezed,
    Object? language = freezed,
  }) {
    return _then(_value.copyWith(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      pushed_at: pushed_at == freezed
          ? _value.pushed_at
          : pushed_at // ignore: cast_nullable_to_non_nullable
              as String?,
      default_branch: default_branch == freezed
          ? _value.default_branch
          : default_branch // ignore: cast_nullable_to_non_nullable
              as String?,
      forks_count: forks_count == freezed
          ? _value.forks_count
          : forks_count // ignore: cast_nullable_to_non_nullable
              as int?,
      stargazers_count: stargazers_count == freezed
          ? _value.stargazers_count
          : stargazers_count // ignore: cast_nullable_to_non_nullable
              as int?,
      language: language == freezed
          ? _value.language
          : language // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$GithubRepoCopyWith<$Res> implements $GithubRepoCopyWith<$Res> {
  factory _$GithubRepoCopyWith(
          _GithubRepo value, $Res Function(_GithubRepo) then) =
      __$GithubRepoCopyWithImpl<$Res>;
  @override
  $Res call(
      {String name,
      String? description,
      String? pushed_at,
      String? default_branch,
      int? forks_count,
      int? stargazers_count,
      String? language});
}

/// @nodoc
class __$GithubRepoCopyWithImpl<$Res> extends _$GithubRepoCopyWithImpl<$Res>
    implements _$GithubRepoCopyWith<$Res> {
  __$GithubRepoCopyWithImpl(
      _GithubRepo _value, $Res Function(_GithubRepo) _then)
      : super(_value, (v) => _then(v as _GithubRepo));

  @override
  _GithubRepo get _value => super._value as _GithubRepo;

  @override
  $Res call({
    Object? name = freezed,
    Object? description = freezed,
    Object? pushed_at = freezed,
    Object? default_branch = freezed,
    Object? forks_count = freezed,
    Object? stargazers_count = freezed,
    Object? language = freezed,
  }) {
    return _then(_GithubRepo(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      pushed_at: pushed_at == freezed
          ? _value.pushed_at
          : pushed_at // ignore: cast_nullable_to_non_nullable
              as String?,
      default_branch: default_branch == freezed
          ? _value.default_branch
          : default_branch // ignore: cast_nullable_to_non_nullable
              as String?,
      forks_count: forks_count == freezed
          ? _value.forks_count
          : forks_count // ignore: cast_nullable_to_non_nullable
              as int?,
      stargazers_count: stargazers_count == freezed
          ? _value.stargazers_count
          : stargazers_count // ignore: cast_nullable_to_non_nullable
              as int?,
      language: language == freezed
          ? _value.language
          : language // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_GithubRepo extends _GithubRepo {
  const _$_GithubRepo(
      {required this.name,
      this.description,
      this.pushed_at,
      this.default_branch,
      this.forks_count,
      this.stargazers_count,
      this.language})
      : super._();

  factory _$_GithubRepo.fromJson(Map<String, dynamic> json) =>
      _$$_GithubRepoFromJson(json);

  @override
  final String name;
  @override
  final String? description;
  @override
  final String? pushed_at;
  @override
  final String? default_branch;
  @override
  final int? forks_count;
  @override
  final int? stargazers_count;
  @override
  final String? language;

  @override
  String toString() {
    return 'GithubRepo(name: $name, description: $description, pushed_at: $pushed_at, default_branch: $default_branch, forks_count: $forks_count, stargazers_count: $stargazers_count, language: $language)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _GithubRepo &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality()
                .equals(other.description, description) &&
            const DeepCollectionEquality().equals(other.pushed_at, pushed_at) &&
            const DeepCollectionEquality()
                .equals(other.default_branch, default_branch) &&
            const DeepCollectionEquality()
                .equals(other.forks_count, forks_count) &&
            const DeepCollectionEquality()
                .equals(other.stargazers_count, stargazers_count) &&
            const DeepCollectionEquality().equals(other.language, language));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(name),
      const DeepCollectionEquality().hash(description),
      const DeepCollectionEquality().hash(pushed_at),
      const DeepCollectionEquality().hash(default_branch),
      const DeepCollectionEquality().hash(forks_count),
      const DeepCollectionEquality().hash(stargazers_count),
      const DeepCollectionEquality().hash(language));

  @JsonKey(ignore: true)
  @override
  _$GithubRepoCopyWith<_GithubRepo> get copyWith =>
      __$GithubRepoCopyWithImpl<_GithubRepo>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_GithubRepoToJson(this);
  }
}

abstract class _GithubRepo extends GithubRepo {
  const factory _GithubRepo(
      {required String name,
      String? description,
      String? pushed_at,
      String? default_branch,
      int? forks_count,
      int? stargazers_count,
      String? language}) = _$_GithubRepo;
  const _GithubRepo._() : super._();

  factory _GithubRepo.fromJson(Map<String, dynamic> json) =
      _$_GithubRepo.fromJson;

  @override
  String get name;
  @override
  String? get description;
  @override
  String? get pushed_at;
  @override
  String? get default_branch;
  @override
  int? get forks_count;
  @override
  int? get stargazers_count;
  @override
  String? get language;
  @override
  @JsonKey(ignore: true)
  _$GithubRepoCopyWith<_GithubRepo> get copyWith =>
      throw _privateConstructorUsedError;
}
