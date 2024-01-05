// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'get_city_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

GetCityResponse _$GetCityResponseFromJson(Map<String, dynamic> json) {
  return _GetCityResponse.fromJson(json);
}

/// @nodoc
mixin _$GetCityResponse {
  List<CityModel> get results => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GetCityResponseCopyWith<GetCityResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetCityResponseCopyWith<$Res> {
  factory $GetCityResponseCopyWith(
          GetCityResponse value, $Res Function(GetCityResponse) then) =
      _$GetCityResponseCopyWithImpl<$Res, GetCityResponse>;
  @useResult
  $Res call({List<CityModel> results});
}

/// @nodoc
class _$GetCityResponseCopyWithImpl<$Res, $Val extends GetCityResponse>
    implements $GetCityResponseCopyWith<$Res> {
  _$GetCityResponseCopyWithImpl(this._value, this._then);

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
              as List<CityModel>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$GetCityResponseImplCopyWith<$Res>
    implements $GetCityResponseCopyWith<$Res> {
  factory _$$GetCityResponseImplCopyWith(_$GetCityResponseImpl value,
          $Res Function(_$GetCityResponseImpl) then) =
      __$$GetCityResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<CityModel> results});
}

/// @nodoc
class __$$GetCityResponseImplCopyWithImpl<$Res>
    extends _$GetCityResponseCopyWithImpl<$Res, _$GetCityResponseImpl>
    implements _$$GetCityResponseImplCopyWith<$Res> {
  __$$GetCityResponseImplCopyWithImpl(
      _$GetCityResponseImpl _value, $Res Function(_$GetCityResponseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? results = null,
  }) {
    return _then(_$GetCityResponseImpl(
      results: null == results
          ? _value._results
          : results // ignore: cast_nullable_to_non_nullable
              as List<CityModel>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$GetCityResponseImpl implements _GetCityResponse {
  const _$GetCityResponseImpl({required final List<CityModel> results})
      : _results = results;

  factory _$GetCityResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$GetCityResponseImplFromJson(json);

  final List<CityModel> _results;
  @override
  List<CityModel> get results {
    if (_results is EqualUnmodifiableListView) return _results;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_results);
  }

  @override
  String toString() {
    return 'GetCityResponse(results: $results)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetCityResponseImpl &&
            const DeepCollectionEquality().equals(other._results, _results));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_results));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetCityResponseImplCopyWith<_$GetCityResponseImpl> get copyWith =>
      __$$GetCityResponseImplCopyWithImpl<_$GetCityResponseImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$GetCityResponseImplToJson(
      this,
    );
  }
}

abstract class _GetCityResponse implements GetCityResponse {
  const factory _GetCityResponse({required final List<CityModel> results}) =
      _$GetCityResponseImpl;

  factory _GetCityResponse.fromJson(Map<String, dynamic> json) =
      _$GetCityResponseImpl.fromJson;

  @override
  List<CityModel> get results;
  @override
  @JsonKey(ignore: true)
  _$$GetCityResponseImplCopyWith<_$GetCityResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
