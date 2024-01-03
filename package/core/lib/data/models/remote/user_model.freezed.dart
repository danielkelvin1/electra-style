// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

UserModel _$UserModelFromJson(Map<String, dynamic> json) {
  return _UserModel.fromJson(json);
}

/// @nodoc
mixin _$UserModel {
  @JsonKey(name: "name")
  String get name => throw _privateConstructorUsedError;
  @JsonKey(name: "username")
  String get username => throw _privateConstructorUsedError;
  @JsonKey(name: "password")
  String? get password => throw _privateConstructorUsedError;
  @JsonKey(name: "email")
  String? get email => throw _privateConstructorUsedError;
  @JsonKey(name: "email_verified_at")
  String? get emailVerifiedAt => throw _privateConstructorUsedError;
  @JsonKey(name: "image_url")
  String? get imageUrl => throw _privateConstructorUsedError;
  @JsonKey(name: "roles")
  String? get roles => throw _privateConstructorUsedError;
  @JsonKey(name: "gender")
  String get gender => throw _privateConstructorUsedError;
  @JsonKey(name: 'old_password')
  String? get oldPassword => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UserModelCopyWith<UserModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserModelCopyWith<$Res> {
  factory $UserModelCopyWith(UserModel value, $Res Function(UserModel) then) =
      _$UserModelCopyWithImpl<$Res, UserModel>;
  @useResult
  $Res call(
      {@JsonKey(name: "name") String name,
      @JsonKey(name: "username") String username,
      @JsonKey(name: "password") String? password,
      @JsonKey(name: "email") String? email,
      @JsonKey(name: "email_verified_at") String? emailVerifiedAt,
      @JsonKey(name: "image_url") String? imageUrl,
      @JsonKey(name: "roles") String? roles,
      @JsonKey(name: "gender") String gender,
      @JsonKey(name: 'old_password') String? oldPassword});
}

/// @nodoc
class _$UserModelCopyWithImpl<$Res, $Val extends UserModel>
    implements $UserModelCopyWith<$Res> {
  _$UserModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? username = null,
    Object? password = freezed,
    Object? email = freezed,
    Object? emailVerifiedAt = freezed,
    Object? imageUrl = freezed,
    Object? roles = freezed,
    Object? gender = null,
    Object? oldPassword = freezed,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      username: null == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String,
      password: freezed == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String?,
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      emailVerifiedAt: freezed == emailVerifiedAt
          ? _value.emailVerifiedAt
          : emailVerifiedAt // ignore: cast_nullable_to_non_nullable
              as String?,
      imageUrl: freezed == imageUrl
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      roles: freezed == roles
          ? _value.roles
          : roles // ignore: cast_nullable_to_non_nullable
              as String?,
      gender: null == gender
          ? _value.gender
          : gender // ignore: cast_nullable_to_non_nullable
              as String,
      oldPassword: freezed == oldPassword
          ? _value.oldPassword
          : oldPassword // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$UserModelImplCopyWith<$Res>
    implements $UserModelCopyWith<$Res> {
  factory _$$UserModelImplCopyWith(
          _$UserModelImpl value, $Res Function(_$UserModelImpl) then) =
      __$$UserModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "name") String name,
      @JsonKey(name: "username") String username,
      @JsonKey(name: "password") String? password,
      @JsonKey(name: "email") String? email,
      @JsonKey(name: "email_verified_at") String? emailVerifiedAt,
      @JsonKey(name: "image_url") String? imageUrl,
      @JsonKey(name: "roles") String? roles,
      @JsonKey(name: "gender") String gender,
      @JsonKey(name: 'old_password') String? oldPassword});
}

/// @nodoc
class __$$UserModelImplCopyWithImpl<$Res>
    extends _$UserModelCopyWithImpl<$Res, _$UserModelImpl>
    implements _$$UserModelImplCopyWith<$Res> {
  __$$UserModelImplCopyWithImpl(
      _$UserModelImpl _value, $Res Function(_$UserModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? username = null,
    Object? password = freezed,
    Object? email = freezed,
    Object? emailVerifiedAt = freezed,
    Object? imageUrl = freezed,
    Object? roles = freezed,
    Object? gender = null,
    Object? oldPassword = freezed,
  }) {
    return _then(_$UserModelImpl(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      username: null == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String,
      password: freezed == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String?,
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      emailVerifiedAt: freezed == emailVerifiedAt
          ? _value.emailVerifiedAt
          : emailVerifiedAt // ignore: cast_nullable_to_non_nullable
              as String?,
      imageUrl: freezed == imageUrl
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      roles: freezed == roles
          ? _value.roles
          : roles // ignore: cast_nullable_to_non_nullable
              as String?,
      gender: null == gender
          ? _value.gender
          : gender // ignore: cast_nullable_to_non_nullable
              as String,
      oldPassword: freezed == oldPassword
          ? _value.oldPassword
          : oldPassword // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$UserModelImpl extends _UserModel {
  const _$UserModelImpl(
      {@JsonKey(name: "name") required this.name,
      @JsonKey(name: "username") required this.username,
      @JsonKey(name: "password") required this.password,
      @JsonKey(name: "email") this.email,
      @JsonKey(name: "email_verified_at") this.emailVerifiedAt,
      @JsonKey(name: "image_url") this.imageUrl,
      @JsonKey(name: "roles") this.roles,
      @JsonKey(name: "gender") required this.gender,
      @JsonKey(name: 'old_password') this.oldPassword})
      : super._();

  factory _$UserModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$UserModelImplFromJson(json);

  @override
  @JsonKey(name: "name")
  final String name;
  @override
  @JsonKey(name: "username")
  final String username;
  @override
  @JsonKey(name: "password")
  final String? password;
  @override
  @JsonKey(name: "email")
  final String? email;
  @override
  @JsonKey(name: "email_verified_at")
  final String? emailVerifiedAt;
  @override
  @JsonKey(name: "image_url")
  final String? imageUrl;
  @override
  @JsonKey(name: "roles")
  final String? roles;
  @override
  @JsonKey(name: "gender")
  final String gender;
  @override
  @JsonKey(name: 'old_password')
  final String? oldPassword;

  @override
  String toString() {
    return 'UserModel(name: $name, username: $username, password: $password, email: $email, emailVerifiedAt: $emailVerifiedAt, imageUrl: $imageUrl, roles: $roles, gender: $gender, oldPassword: $oldPassword)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserModelImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.username, username) ||
                other.username == username) &&
            (identical(other.password, password) ||
                other.password == password) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.emailVerifiedAt, emailVerifiedAt) ||
                other.emailVerifiedAt == emailVerifiedAt) &&
            (identical(other.imageUrl, imageUrl) ||
                other.imageUrl == imageUrl) &&
            (identical(other.roles, roles) || other.roles == roles) &&
            (identical(other.gender, gender) || other.gender == gender) &&
            (identical(other.oldPassword, oldPassword) ||
                other.oldPassword == oldPassword));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, name, username, password, email,
      emailVerifiedAt, imageUrl, roles, gender, oldPassword);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UserModelImplCopyWith<_$UserModelImpl> get copyWith =>
      __$$UserModelImplCopyWithImpl<_$UserModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UserModelImplToJson(
      this,
    );
  }
}

abstract class _UserModel extends UserModel {
  const factory _UserModel(
          {@JsonKey(name: "name") required final String name,
          @JsonKey(name: "username") required final String username,
          @JsonKey(name: "password") required final String? password,
          @JsonKey(name: "email") final String? email,
          @JsonKey(name: "email_verified_at") final String? emailVerifiedAt,
          @JsonKey(name: "image_url") final String? imageUrl,
          @JsonKey(name: "roles") final String? roles,
          @JsonKey(name: "gender") required final String gender,
          @JsonKey(name: 'old_password') final String? oldPassword}) =
      _$UserModelImpl;
  const _UserModel._() : super._();

  factory _UserModel.fromJson(Map<String, dynamic> json) =
      _$UserModelImpl.fromJson;

  @override
  @JsonKey(name: "name")
  String get name;
  @override
  @JsonKey(name: "username")
  String get username;
  @override
  @JsonKey(name: "password")
  String? get password;
  @override
  @JsonKey(name: "email")
  String? get email;
  @override
  @JsonKey(name: "email_verified_at")
  String? get emailVerifiedAt;
  @override
  @JsonKey(name: "image_url")
  String? get imageUrl;
  @override
  @JsonKey(name: "roles")
  String? get roles;
  @override
  @JsonKey(name: "gender")
  String get gender;
  @override
  @JsonKey(name: 'old_password')
  String? get oldPassword;
  @override
  @JsonKey(ignore: true)
  _$$UserModelImplCopyWith<_$UserModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
