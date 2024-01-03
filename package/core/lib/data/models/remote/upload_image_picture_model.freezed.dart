// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'upload_image_picture_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$UploadImagePictureModel {
  MultipartFile get picture => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $UploadImagePictureModelCopyWith<UploadImagePictureModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UploadImagePictureModelCopyWith<$Res> {
  factory $UploadImagePictureModelCopyWith(UploadImagePictureModel value,
          $Res Function(UploadImagePictureModel) then) =
      _$UploadImagePictureModelCopyWithImpl<$Res, UploadImagePictureModel>;
  @useResult
  $Res call({MultipartFile picture});
}

/// @nodoc
class _$UploadImagePictureModelCopyWithImpl<$Res,
        $Val extends UploadImagePictureModel>
    implements $UploadImagePictureModelCopyWith<$Res> {
  _$UploadImagePictureModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? picture = null,
  }) {
    return _then(_value.copyWith(
      picture: null == picture
          ? _value.picture
          : picture // ignore: cast_nullable_to_non_nullable
              as MultipartFile,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$UploadImagePictureModelImplCopyWith<$Res>
    implements $UploadImagePictureModelCopyWith<$Res> {
  factory _$$UploadImagePictureModelImplCopyWith(
          _$UploadImagePictureModelImpl value,
          $Res Function(_$UploadImagePictureModelImpl) then) =
      __$$UploadImagePictureModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({MultipartFile picture});
}

/// @nodoc
class __$$UploadImagePictureModelImplCopyWithImpl<$Res>
    extends _$UploadImagePictureModelCopyWithImpl<$Res,
        _$UploadImagePictureModelImpl>
    implements _$$UploadImagePictureModelImplCopyWith<$Res> {
  __$$UploadImagePictureModelImplCopyWithImpl(
      _$UploadImagePictureModelImpl _value,
      $Res Function(_$UploadImagePictureModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? picture = null,
  }) {
    return _then(_$UploadImagePictureModelImpl(
      picture: null == picture
          ? _value.picture
          : picture // ignore: cast_nullable_to_non_nullable
              as MultipartFile,
    ));
  }
}

/// @nodoc

class _$UploadImagePictureModelImpl implements _UploadImagePictureModel {
  _$UploadImagePictureModelImpl({required this.picture});

  @override
  final MultipartFile picture;

  @override
  String toString() {
    return 'UploadImagePictureModel(picture: $picture)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UploadImagePictureModelImpl &&
            (identical(other.picture, picture) || other.picture == picture));
  }

  @override
  int get hashCode => Object.hash(runtimeType, picture);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UploadImagePictureModelImplCopyWith<_$UploadImagePictureModelImpl>
      get copyWith => __$$UploadImagePictureModelImplCopyWithImpl<
          _$UploadImagePictureModelImpl>(this, _$identity);
}

abstract class _UploadImagePictureModel implements UploadImagePictureModel {
  factory _UploadImagePictureModel({required final MultipartFile picture}) =
      _$UploadImagePictureModelImpl;

  @override
  MultipartFile get picture;
  @override
  @JsonKey(ignore: true)
  _$$UploadImagePictureModelImplCopyWith<_$UploadImagePictureModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}
