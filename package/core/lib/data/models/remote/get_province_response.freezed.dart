// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'get_province_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

GetProvinceResponse _$GetProvinceResponseFromJson(Map<String, dynamic> json) {
  return _GetProvinceResponse.fromJson(json);
}

/// @nodoc
mixin _$GetProvinceResponse {
  List<ProvinceModel> get results => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GetProvinceResponseCopyWith<GetProvinceResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetProvinceResponseCopyWith<$Res> {
  factory $GetProvinceResponseCopyWith(
          GetProvinceResponse value, $Res Function(GetProvinceResponse) then) =
      _$GetProvinceResponseCopyWithImpl<$Res, GetProvinceResponse>;
  @useResult
  $Res call({List<ProvinceModel> results});
}

/// @nodoc
class _$GetProvinceResponseCopyWithImpl<$Res, $Val extends GetProvinceResponse>
    implements $GetProvinceResponseCopyWith<$Res> {
  _$GetProvinceResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? results = null,
  }) {
    return _then(_value.copyWith(
      results: null == results
          ? _value.results
          : results // ignore: cast_nullable_to_non_nullable
              as List<ProvinceModel>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$GetProvinceResponseImplCopyWith<$Res>
    implements $GetProvinceResponseCopyWith<$Res> {
  factory _$$GetProvinceResponseImplCopyWith(_$GetProvinceResponseImpl value,
          $Res Function(_$GetProvinceResponseImpl) then) =
      __$$GetProvinceResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<ProvinceModel> results});
}

/// @nodoc
class __$$GetProvinceResponseImplCopyWithImpl<$Res>
    extends _$GetProvinceResponseCopyWithImpl<$Res, _$GetProvinceResponseImpl>
    implements _$$GetProvinceResponseImplCopyWith<$Res> {
  __$$GetProvinceResponseImplCopyWithImpl(_$GetProvinceResponseImpl _value,
      $Res Function(_$GetProvinceResponseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? results = null,
  }) {
    return _then(_$GetProvinceResponseImpl(
      results: null == results
          ? _value._results
          : results // ignore: cast_nullable_to_non_nullable
              as List<ProvinceModel>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$GetProvinceResponseImpl implements _GetProvinceResponse {
  const _$GetProvinceResponseImpl({required final List<ProvinceModel> results})
      : _results = results;

  factory _$GetProvinceResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$GetProvinceResponseImplFromJson(json);

  final List<ProvinceModel> _results;
  @override
  List<ProvinceModel> get results {
    if (_results is EqualUnmodifiableListView) return _results;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_results);
  }

  @override
  String toString() {
    return 'GetProvinceResponse(results: $results)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetProvinceResponseImpl &&
            const DeepCollectionEquality().equals(other._results, _results));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_results));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetProvinceResponseImplCopyWith<_$GetProvinceResponseImpl> get copyWith =>
      __$$GetProvinceResponseImplCopyWithImpl<_$GetProvinceResponseImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$GetProvinceResponseImplToJson(
      this,
    );
  }
}

abstract class _GetProvinceResponse implements GetProvinceResponse {
  const factory _GetProvinceResponse(
      {required final List<ProvinceModel> results}) = _$GetProvinceResponseImpl;

  factory _GetProvinceResponse.fromJson(Map<String, dynamic> json) =
      _$GetProvinceResponseImpl.fromJson;

  @override
  List<ProvinceModel> get results;
  @override
  @JsonKey(ignore: true)
  _$$GetProvinceResponseImplCopyWith<_$GetProvinceResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
