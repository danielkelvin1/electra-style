// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'personal_detail_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$PersonalDetailEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getUser,
    required TResult Function(UploadImagePictureModel picture) changePicture,
    required TResult Function(UserModel user) updateUser,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getUser,
    TResult? Function(UploadImagePictureModel picture)? changePicture,
    TResult? Function(UserModel user)? updateUser,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getUser,
    TResult Function(UploadImagePictureModel picture)? changePicture,
    TResult Function(UserModel user)? updateUser,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetUser value) getUser,
    required TResult Function(_ChangePicture value) changePicture,
    required TResult Function(_UpdateUser value) updateUser,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetUser value)? getUser,
    TResult? Function(_ChangePicture value)? changePicture,
    TResult? Function(_UpdateUser value)? updateUser,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetUser value)? getUser,
    TResult Function(_ChangePicture value)? changePicture,
    TResult Function(_UpdateUser value)? updateUser,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PersonalDetailEventCopyWith<$Res> {
  factory $PersonalDetailEventCopyWith(
          PersonalDetailEvent value, $Res Function(PersonalDetailEvent) then) =
      _$PersonalDetailEventCopyWithImpl<$Res, PersonalDetailEvent>;
}

/// @nodoc
class _$PersonalDetailEventCopyWithImpl<$Res, $Val extends PersonalDetailEvent>
    implements $PersonalDetailEventCopyWith<$Res> {
  _$PersonalDetailEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$GetUserImplCopyWith<$Res> {
  factory _$$GetUserImplCopyWith(
          _$GetUserImpl value, $Res Function(_$GetUserImpl) then) =
      __$$GetUserImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GetUserImplCopyWithImpl<$Res>
    extends _$PersonalDetailEventCopyWithImpl<$Res, _$GetUserImpl>
    implements _$$GetUserImplCopyWith<$Res> {
  __$$GetUserImplCopyWithImpl(
      _$GetUserImpl _value, $Res Function(_$GetUserImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$GetUserImpl implements _GetUser {
  _$GetUserImpl();

  @override
  String toString() {
    return 'PersonalDetailEvent.getUser()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$GetUserImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getUser,
    required TResult Function(UploadImagePictureModel picture) changePicture,
    required TResult Function(UserModel user) updateUser,
  }) {
    return getUser();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getUser,
    TResult? Function(UploadImagePictureModel picture)? changePicture,
    TResult? Function(UserModel user)? updateUser,
  }) {
    return getUser?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getUser,
    TResult Function(UploadImagePictureModel picture)? changePicture,
    TResult Function(UserModel user)? updateUser,
    required TResult orElse(),
  }) {
    if (getUser != null) {
      return getUser();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetUser value) getUser,
    required TResult Function(_ChangePicture value) changePicture,
    required TResult Function(_UpdateUser value) updateUser,
  }) {
    return getUser(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetUser value)? getUser,
    TResult? Function(_ChangePicture value)? changePicture,
    TResult? Function(_UpdateUser value)? updateUser,
  }) {
    return getUser?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetUser value)? getUser,
    TResult Function(_ChangePicture value)? changePicture,
    TResult Function(_UpdateUser value)? updateUser,
    required TResult orElse(),
  }) {
    if (getUser != null) {
      return getUser(this);
    }
    return orElse();
  }
}

abstract class _GetUser implements PersonalDetailEvent {
  factory _GetUser() = _$GetUserImpl;
}

/// @nodoc
abstract class _$$ChangePictureImplCopyWith<$Res> {
  factory _$$ChangePictureImplCopyWith(
          _$ChangePictureImpl value, $Res Function(_$ChangePictureImpl) then) =
      __$$ChangePictureImplCopyWithImpl<$Res>;
  @useResult
  $Res call({UploadImagePictureModel picture});

  $UploadImagePictureModelCopyWith<$Res> get picture;
}

/// @nodoc
class __$$ChangePictureImplCopyWithImpl<$Res>
    extends _$PersonalDetailEventCopyWithImpl<$Res, _$ChangePictureImpl>
    implements _$$ChangePictureImplCopyWith<$Res> {
  __$$ChangePictureImplCopyWithImpl(
      _$ChangePictureImpl _value, $Res Function(_$ChangePictureImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? picture = null,
  }) {
    return _then(_$ChangePictureImpl(
      null == picture
          ? _value.picture
          : picture // ignore: cast_nullable_to_non_nullable
              as UploadImagePictureModel,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $UploadImagePictureModelCopyWith<$Res> get picture {
    return $UploadImagePictureModelCopyWith<$Res>(_value.picture, (value) {
      return _then(_value.copyWith(picture: value));
    });
  }
}

/// @nodoc

class _$ChangePictureImpl implements _ChangePicture {
  _$ChangePictureImpl(this.picture);

  @override
  final UploadImagePictureModel picture;

  @override
  String toString() {
    return 'PersonalDetailEvent.changePicture(picture: $picture)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChangePictureImpl &&
            (identical(other.picture, picture) || other.picture == picture));
  }

  @override
  int get hashCode => Object.hash(runtimeType, picture);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ChangePictureImplCopyWith<_$ChangePictureImpl> get copyWith =>
      __$$ChangePictureImplCopyWithImpl<_$ChangePictureImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getUser,
    required TResult Function(UploadImagePictureModel picture) changePicture,
    required TResult Function(UserModel user) updateUser,
  }) {
    return changePicture(picture);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getUser,
    TResult? Function(UploadImagePictureModel picture)? changePicture,
    TResult? Function(UserModel user)? updateUser,
  }) {
    return changePicture?.call(picture);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getUser,
    TResult Function(UploadImagePictureModel picture)? changePicture,
    TResult Function(UserModel user)? updateUser,
    required TResult orElse(),
  }) {
    if (changePicture != null) {
      return changePicture(picture);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetUser value) getUser,
    required TResult Function(_ChangePicture value) changePicture,
    required TResult Function(_UpdateUser value) updateUser,
  }) {
    return changePicture(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetUser value)? getUser,
    TResult? Function(_ChangePicture value)? changePicture,
    TResult? Function(_UpdateUser value)? updateUser,
  }) {
    return changePicture?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetUser value)? getUser,
    TResult Function(_ChangePicture value)? changePicture,
    TResult Function(_UpdateUser value)? updateUser,
    required TResult orElse(),
  }) {
    if (changePicture != null) {
      return changePicture(this);
    }
    return orElse();
  }
}

abstract class _ChangePicture implements PersonalDetailEvent {
  factory _ChangePicture(final UploadImagePictureModel picture) =
      _$ChangePictureImpl;

  UploadImagePictureModel get picture;
  @JsonKey(ignore: true)
  _$$ChangePictureImplCopyWith<_$ChangePictureImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UpdateUserImplCopyWith<$Res> {
  factory _$$UpdateUserImplCopyWith(
          _$UpdateUserImpl value, $Res Function(_$UpdateUserImpl) then) =
      __$$UpdateUserImplCopyWithImpl<$Res>;
  @useResult
  $Res call({UserModel user});

  $UserModelCopyWith<$Res> get user;
}

/// @nodoc
class __$$UpdateUserImplCopyWithImpl<$Res>
    extends _$PersonalDetailEventCopyWithImpl<$Res, _$UpdateUserImpl>
    implements _$$UpdateUserImplCopyWith<$Res> {
  __$$UpdateUserImplCopyWithImpl(
      _$UpdateUserImpl _value, $Res Function(_$UpdateUserImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? user = null,
  }) {
    return _then(_$UpdateUserImpl(
      null == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as UserModel,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $UserModelCopyWith<$Res> get user {
    return $UserModelCopyWith<$Res>(_value.user, (value) {
      return _then(_value.copyWith(user: value));
    });
  }
}

/// @nodoc

class _$UpdateUserImpl implements _UpdateUser {
  _$UpdateUserImpl(this.user);

  @override
  final UserModel user;

  @override
  String toString() {
    return 'PersonalDetailEvent.updateUser(user: $user)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateUserImpl &&
            (identical(other.user, user) || other.user == user));
  }

  @override
  int get hashCode => Object.hash(runtimeType, user);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdateUserImplCopyWith<_$UpdateUserImpl> get copyWith =>
      __$$UpdateUserImplCopyWithImpl<_$UpdateUserImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getUser,
    required TResult Function(UploadImagePictureModel picture) changePicture,
    required TResult Function(UserModel user) updateUser,
  }) {
    return updateUser(user);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getUser,
    TResult? Function(UploadImagePictureModel picture)? changePicture,
    TResult? Function(UserModel user)? updateUser,
  }) {
    return updateUser?.call(user);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getUser,
    TResult Function(UploadImagePictureModel picture)? changePicture,
    TResult Function(UserModel user)? updateUser,
    required TResult orElse(),
  }) {
    if (updateUser != null) {
      return updateUser(user);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetUser value) getUser,
    required TResult Function(_ChangePicture value) changePicture,
    required TResult Function(_UpdateUser value) updateUser,
  }) {
    return updateUser(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetUser value)? getUser,
    TResult? Function(_ChangePicture value)? changePicture,
    TResult? Function(_UpdateUser value)? updateUser,
  }) {
    return updateUser?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetUser value)? getUser,
    TResult Function(_ChangePicture value)? changePicture,
    TResult Function(_UpdateUser value)? updateUser,
    required TResult orElse(),
  }) {
    if (updateUser != null) {
      return updateUser(this);
    }
    return orElse();
  }
}

abstract class _UpdateUser implements PersonalDetailEvent {
  factory _UpdateUser(final UserModel user) = _$UpdateUserImpl;

  UserModel get user;
  @JsonKey(ignore: true)
  _$$UpdateUserImplCopyWith<_$UpdateUserImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$PersonalDetailState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() secondLoading,
    required TResult Function(User user) loaded,
    required TResult Function(User user) secondLoaded,
    required TResult Function(String message) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? secondLoading,
    TResult? Function(User user)? loaded,
    TResult? Function(User user)? secondLoaded,
    TResult? Function(String message)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? secondLoading,
    TResult Function(User user)? loaded,
    TResult Function(User user)? secondLoaded,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_SecondLoading value) secondLoading,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_SecondLoaded value) secondLoaded,
    required TResult Function(_Error value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_SecondLoading value)? secondLoading,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_SecondLoaded value)? secondLoaded,
    TResult? Function(_Error value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_SecondLoading value)? secondLoading,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_SecondLoaded value)? secondLoaded,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PersonalDetailStateCopyWith<$Res> {
  factory $PersonalDetailStateCopyWith(
          PersonalDetailState value, $Res Function(PersonalDetailState) then) =
      _$PersonalDetailStateCopyWithImpl<$Res, PersonalDetailState>;
}

/// @nodoc
class _$PersonalDetailStateCopyWithImpl<$Res, $Val extends PersonalDetailState>
    implements $PersonalDetailStateCopyWith<$Res> {
  _$PersonalDetailStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$InitialImplCopyWith<$Res> {
  factory _$$InitialImplCopyWith(
          _$InitialImpl value, $Res Function(_$InitialImpl) then) =
      __$$InitialImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$InitialImplCopyWithImpl<$Res>
    extends _$PersonalDetailStateCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl _value, $Res Function(_$InitialImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$InitialImpl implements _Initial {
  _$InitialImpl();

  @override
  String toString() {
    return 'PersonalDetailState.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$InitialImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() secondLoading,
    required TResult Function(User user) loaded,
    required TResult Function(User user) secondLoaded,
    required TResult Function(String message) error,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? secondLoading,
    TResult? Function(User user)? loaded,
    TResult? Function(User user)? secondLoaded,
    TResult? Function(String message)? error,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? secondLoading,
    TResult Function(User user)? loaded,
    TResult Function(User user)? secondLoaded,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_SecondLoading value) secondLoading,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_SecondLoaded value) secondLoaded,
    required TResult Function(_Error value) error,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_SecondLoading value)? secondLoading,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_SecondLoaded value)? secondLoaded,
    TResult? Function(_Error value)? error,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_SecondLoading value)? secondLoading,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_SecondLoaded value)? secondLoaded,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements PersonalDetailState {
  factory _Initial() = _$InitialImpl;
}

/// @nodoc
abstract class _$$LoadingImplCopyWith<$Res> {
  factory _$$LoadingImplCopyWith(
          _$LoadingImpl value, $Res Function(_$LoadingImpl) then) =
      __$$LoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoadingImplCopyWithImpl<$Res>
    extends _$PersonalDetailStateCopyWithImpl<$Res, _$LoadingImpl>
    implements _$$LoadingImplCopyWith<$Res> {
  __$$LoadingImplCopyWithImpl(
      _$LoadingImpl _value, $Res Function(_$LoadingImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$LoadingImpl implements _Loading {
  _$LoadingImpl();

  @override
  String toString() {
    return 'PersonalDetailState.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() secondLoading,
    required TResult Function(User user) loaded,
    required TResult Function(User user) secondLoaded,
    required TResult Function(String message) error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? secondLoading,
    TResult? Function(User user)? loaded,
    TResult? Function(User user)? secondLoaded,
    TResult? Function(String message)? error,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? secondLoading,
    TResult Function(User user)? loaded,
    TResult Function(User user)? secondLoaded,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_SecondLoading value) secondLoading,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_SecondLoaded value) secondLoaded,
    required TResult Function(_Error value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_SecondLoading value)? secondLoading,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_SecondLoaded value)? secondLoaded,
    TResult? Function(_Error value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_SecondLoading value)? secondLoading,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_SecondLoaded value)? secondLoaded,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _Loading implements PersonalDetailState {
  factory _Loading() = _$LoadingImpl;
}

/// @nodoc
abstract class _$$SecondLoadingImplCopyWith<$Res> {
  factory _$$SecondLoadingImplCopyWith(
          _$SecondLoadingImpl value, $Res Function(_$SecondLoadingImpl) then) =
      __$$SecondLoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$SecondLoadingImplCopyWithImpl<$Res>
    extends _$PersonalDetailStateCopyWithImpl<$Res, _$SecondLoadingImpl>
    implements _$$SecondLoadingImplCopyWith<$Res> {
  __$$SecondLoadingImplCopyWithImpl(
      _$SecondLoadingImpl _value, $Res Function(_$SecondLoadingImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$SecondLoadingImpl implements _SecondLoading {
  _$SecondLoadingImpl();

  @override
  String toString() {
    return 'PersonalDetailState.secondLoading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$SecondLoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() secondLoading,
    required TResult Function(User user) loaded,
    required TResult Function(User user) secondLoaded,
    required TResult Function(String message) error,
  }) {
    return secondLoading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? secondLoading,
    TResult? Function(User user)? loaded,
    TResult? Function(User user)? secondLoaded,
    TResult? Function(String message)? error,
  }) {
    return secondLoading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? secondLoading,
    TResult Function(User user)? loaded,
    TResult Function(User user)? secondLoaded,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (secondLoading != null) {
      return secondLoading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_SecondLoading value) secondLoading,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_SecondLoaded value) secondLoaded,
    required TResult Function(_Error value) error,
  }) {
    return secondLoading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_SecondLoading value)? secondLoading,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_SecondLoaded value)? secondLoaded,
    TResult? Function(_Error value)? error,
  }) {
    return secondLoading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_SecondLoading value)? secondLoading,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_SecondLoaded value)? secondLoaded,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (secondLoading != null) {
      return secondLoading(this);
    }
    return orElse();
  }
}

abstract class _SecondLoading implements PersonalDetailState {
  factory _SecondLoading() = _$SecondLoadingImpl;
}

/// @nodoc
abstract class _$$LoadedImplCopyWith<$Res> {
  factory _$$LoadedImplCopyWith(
          _$LoadedImpl value, $Res Function(_$LoadedImpl) then) =
      __$$LoadedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({User user});
}

/// @nodoc
class __$$LoadedImplCopyWithImpl<$Res>
    extends _$PersonalDetailStateCopyWithImpl<$Res, _$LoadedImpl>
    implements _$$LoadedImplCopyWith<$Res> {
  __$$LoadedImplCopyWithImpl(
      _$LoadedImpl _value, $Res Function(_$LoadedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? user = null,
  }) {
    return _then(_$LoadedImpl(
      null == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as User,
    ));
  }
}

/// @nodoc

class _$LoadedImpl implements _Loaded {
  _$LoadedImpl(this.user);

  @override
  final User user;

  @override
  String toString() {
    return 'PersonalDetailState.loaded(user: $user)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoadedImpl &&
            (identical(other.user, user) || other.user == user));
  }

  @override
  int get hashCode => Object.hash(runtimeType, user);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LoadedImplCopyWith<_$LoadedImpl> get copyWith =>
      __$$LoadedImplCopyWithImpl<_$LoadedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() secondLoading,
    required TResult Function(User user) loaded,
    required TResult Function(User user) secondLoaded,
    required TResult Function(String message) error,
  }) {
    return loaded(user);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? secondLoading,
    TResult? Function(User user)? loaded,
    TResult? Function(User user)? secondLoaded,
    TResult? Function(String message)? error,
  }) {
    return loaded?.call(user);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? secondLoading,
    TResult Function(User user)? loaded,
    TResult Function(User user)? secondLoaded,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(user);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_SecondLoading value) secondLoading,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_SecondLoaded value) secondLoaded,
    required TResult Function(_Error value) error,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_SecondLoading value)? secondLoading,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_SecondLoaded value)? secondLoaded,
    TResult? Function(_Error value)? error,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_SecondLoading value)? secondLoading,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_SecondLoaded value)? secondLoaded,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class _Loaded implements PersonalDetailState {
  factory _Loaded(final User user) = _$LoadedImpl;

  User get user;
  @JsonKey(ignore: true)
  _$$LoadedImplCopyWith<_$LoadedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SecondLoadedImplCopyWith<$Res> {
  factory _$$SecondLoadedImplCopyWith(
          _$SecondLoadedImpl value, $Res Function(_$SecondLoadedImpl) then) =
      __$$SecondLoadedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({User user});
}

/// @nodoc
class __$$SecondLoadedImplCopyWithImpl<$Res>
    extends _$PersonalDetailStateCopyWithImpl<$Res, _$SecondLoadedImpl>
    implements _$$SecondLoadedImplCopyWith<$Res> {
  __$$SecondLoadedImplCopyWithImpl(
      _$SecondLoadedImpl _value, $Res Function(_$SecondLoadedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? user = null,
  }) {
    return _then(_$SecondLoadedImpl(
      null == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as User,
    ));
  }
}

/// @nodoc

class _$SecondLoadedImpl implements _SecondLoaded {
  _$SecondLoadedImpl(this.user);

  @override
  final User user;

  @override
  String toString() {
    return 'PersonalDetailState.secondLoaded(user: $user)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SecondLoadedImpl &&
            (identical(other.user, user) || other.user == user));
  }

  @override
  int get hashCode => Object.hash(runtimeType, user);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SecondLoadedImplCopyWith<_$SecondLoadedImpl> get copyWith =>
      __$$SecondLoadedImplCopyWithImpl<_$SecondLoadedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() secondLoading,
    required TResult Function(User user) loaded,
    required TResult Function(User user) secondLoaded,
    required TResult Function(String message) error,
  }) {
    return secondLoaded(user);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? secondLoading,
    TResult? Function(User user)? loaded,
    TResult? Function(User user)? secondLoaded,
    TResult? Function(String message)? error,
  }) {
    return secondLoaded?.call(user);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? secondLoading,
    TResult Function(User user)? loaded,
    TResult Function(User user)? secondLoaded,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (secondLoaded != null) {
      return secondLoaded(user);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_SecondLoading value) secondLoading,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_SecondLoaded value) secondLoaded,
    required TResult Function(_Error value) error,
  }) {
    return secondLoaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_SecondLoading value)? secondLoading,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_SecondLoaded value)? secondLoaded,
    TResult? Function(_Error value)? error,
  }) {
    return secondLoaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_SecondLoading value)? secondLoading,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_SecondLoaded value)? secondLoaded,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (secondLoaded != null) {
      return secondLoaded(this);
    }
    return orElse();
  }
}

abstract class _SecondLoaded implements PersonalDetailState {
  factory _SecondLoaded(final User user) = _$SecondLoadedImpl;

  User get user;
  @JsonKey(ignore: true)
  _$$SecondLoadedImplCopyWith<_$SecondLoadedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ErrorImplCopyWith<$Res> {
  factory _$$ErrorImplCopyWith(
          _$ErrorImpl value, $Res Function(_$ErrorImpl) then) =
      __$$ErrorImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$ErrorImplCopyWithImpl<$Res>
    extends _$PersonalDetailStateCopyWithImpl<$Res, _$ErrorImpl>
    implements _$$ErrorImplCopyWith<$Res> {
  __$$ErrorImplCopyWithImpl(
      _$ErrorImpl _value, $Res Function(_$ErrorImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$ErrorImpl(
      null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ErrorImpl implements _Error {
  _$ErrorImpl(this.message);

  @override
  final String message;

  @override
  String toString() {
    return 'PersonalDetailState.error(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ErrorImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ErrorImplCopyWith<_$ErrorImpl> get copyWith =>
      __$$ErrorImplCopyWithImpl<_$ErrorImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() secondLoading,
    required TResult Function(User user) loaded,
    required TResult Function(User user) secondLoaded,
    required TResult Function(String message) error,
  }) {
    return error(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? secondLoading,
    TResult? Function(User user)? loaded,
    TResult? Function(User user)? secondLoaded,
    TResult? Function(String message)? error,
  }) {
    return error?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? secondLoading,
    TResult Function(User user)? loaded,
    TResult Function(User user)? secondLoaded,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_SecondLoading value) secondLoading,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_SecondLoaded value) secondLoaded,
    required TResult Function(_Error value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_SecondLoading value)? secondLoading,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_SecondLoaded value)? secondLoaded,
    TResult? Function(_Error value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_SecondLoading value)? secondLoading,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_SecondLoaded value)? secondLoaded,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _Error implements PersonalDetailState {
  factory _Error(final String message) = _$ErrorImpl;

  String get message;
  @JsonKey(ignore: true)
  _$$ErrorImplCopyWith<_$ErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
