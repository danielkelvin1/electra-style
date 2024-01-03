// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'upload_image_picture_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

UploadImagePictureResponse _$UploadImagePictureResponseFromJson(
    Map<String, dynamic> json) {
  return _UploadImagePictureResponse.fromJson(json);
}

/// @nodoc
mixin _$UploadImagePictureResponse {
  String get message => throw _privateConstructorUsedError;
  String get path => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UploadImagePictureResponseCopyWith<UploadImagePictureResponse>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UploadImagePictureResponseCopyWith<$Res> {
  factory $UploadImagePictureResponseCopyWith(UploadImagePictureResponse value,
          $Res Function(UploadImagePictureResponse) then) =
      _$UploadImagePictureResponseCopyWithImpl<$Res,
          UploadImagePictureResponse>;
  @useResult
  $Res call({String message, String path});
}

/// @nodoc
class _$UploadImagePictureResponseCopyWithImpl<$Res,
        $Val extends UploadImagePictureResponse>
    implements $UploadImagePictureResponseCopyWith<$Res> {
  _$UploadImagePictureResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
    Object? path = null,
  }) {
    return _then(_value.copyWith(
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      path: null == path
          ? _value.path
          : path // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$UploadImagePictureResponseImplCopyWith<$Res>
    implements $UploadImagePictureResponseCopyWith<$Res> {
  factory _$$UploadImagePictureResponseImplCopyWith(
          _$UploadImagePictureResponseImpl value,
          $Res Function(_$UploadImagePictureResponseImpl) then) =
      __$$UploadImagePictureResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String message, String path});
}

/// @nodoc
class __$$UploadImagePictureResponseImplCopyWithImpl<$Res>
    extends _$UploadImagePictureResponseCopyWithImpl<$Res,
        _$UploadImagePictureResponseImpl>
    implements _$$UploadImagePictureResponseImplCopyWith<$Res> {
  __$$UploadImagePictureResponseImplCopyWithImpl(
      _$UploadImagePictureResponseImpl _value,
      $Res Function(_$UploadImagePictureResponseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
    Object? path = null,
  }) {
    return _then(_$UploadImagePictureResponseImpl(
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      path: null == path
          ? _value.path
          : path // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$UploadImagePictureResponseImpl implements _UploadImagePictureResponse {
  const _$UploadImagePictureResponseImpl(
      {required this.message, required this.path});

  factory _$UploadImagePictureResponseImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$UploadImagePictureResponseImplFromJson(json);

  @override
  final String message;
  @override
  final String path;

  @override
  String toString() {
    return 'UploadImagePictureResponse(message: $message, path: $path)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UploadImagePictureResponseImpl &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.path, path) || other.path == path));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, message, path);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UploadImagePictureResponseImplCopyWith<_$UploadImagePictureResponseImpl>
      get copyWith => __$$UploadImagePictureResponseImplCopyWithImpl<
          _$UploadImagePictureResponseImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UploadImagePictureResponseImplToJson(
      this,
    );
  }
}

abstract class _UploadImagePictureResponse
    implements UploadImagePictureResponse {
  const factory _UploadImagePictureResponse(
      {required final String message,
      required final String path}) = _$UploadImagePictureResponseImpl;

  factory _UploadImagePictureResponse.fromJson(Map<String, dynamic> json) =
      _$UploadImagePictureResponseImpl.fromJson;

  @override
  String get message;
  @override
  String get path;
  @override
  @JsonKey(ignore: true)
  _$$UploadImagePictureResponseImplCopyWith<_$UploadImagePictureResponseImpl>
      get copyWith => throw _privateConstructorUsedError;
}
