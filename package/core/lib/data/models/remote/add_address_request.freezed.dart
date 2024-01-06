// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'add_address_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

AddAddressRequest _$AddAddressRequestFromJson(Map<String, dynamic> json) {
  return _AddAddressRequest.fromJson(json);
}

/// @nodoc
mixin _$AddAddressRequest {
  @JsonKey(name: 'province_id')
  int get provinceId => throw _privateConstructorUsedError;
  @JsonKey(name: 'city_id')
  int get cityId => throw _privateConstructorUsedError;
  String get city => throw _privateConstructorUsedError;
  String get province => throw _privateConstructorUsedError;
  @JsonKey(name: 'complete_address')
  String get completeAddress => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AddAddressRequestCopyWith<AddAddressRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AddAddressRequestCopyWith<$Res> {
  factory $AddAddressRequestCopyWith(
          AddAddressRequest value, $Res Function(AddAddressRequest) then) =
      _$AddAddressRequestCopyWithImpl<$Res, AddAddressRequest>;
  @useResult
  $Res call(
      {@JsonKey(name: 'province_id') int provinceId,
      @JsonKey(name: 'city_id') int cityId,
      String city,
      String province,
      @JsonKey(name: 'complete_address') String completeAddress});
}

/// @nodoc
class _$AddAddressRequestCopyWithImpl<$Res, $Val extends AddAddressRequest>
    implements $AddAddressRequestCopyWith<$Res> {
  _$AddAddressRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? provinceId = null,
    Object? cityId = null,
    Object? city = null,
    Object? province = null,
    Object? completeAddress = null,
  }) {
    return _then(_value.copyWith(
      provinceId: null == provinceId
          ? _value.provinceId
          : provinceId // ignore: cast_nullable_to_non_nullable
              as int,
      cityId: null == cityId
          ? _value.cityId
          : cityId // ignore: cast_nullable_to_non_nullable
              as int,
      city: null == city
          ? _value.city
          : city // ignore: cast_nullable_to_non_nullable
              as String,
      province: null == province
          ? _value.province
          : province // ignore: cast_nullable_to_non_nullable
              as String,
      completeAddress: null == completeAddress
          ? _value.completeAddress
          : completeAddress // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AddAddressRequestImplCopyWith<$Res>
    implements $AddAddressRequestCopyWith<$Res> {
  factory _$$AddAddressRequestImplCopyWith(_$AddAddressRequestImpl value,
          $Res Function(_$AddAddressRequestImpl) then) =
      __$$AddAddressRequestImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'province_id') int provinceId,
      @JsonKey(name: 'city_id') int cityId,
      String city,
      String province,
      @JsonKey(name: 'complete_address') String completeAddress});
}

/// @nodoc
class __$$AddAddressRequestImplCopyWithImpl<$Res>
    extends _$AddAddressRequestCopyWithImpl<$Res, _$AddAddressRequestImpl>
    implements _$$AddAddressRequestImplCopyWith<$Res> {
  __$$AddAddressRequestImplCopyWithImpl(_$AddAddressRequestImpl _value,
      $Res Function(_$AddAddressRequestImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? provinceId = null,
    Object? cityId = null,
    Object? city = null,
    Object? province = null,
    Object? completeAddress = null,
  }) {
    return _then(_$AddAddressRequestImpl(
      provinceId: null == provinceId
          ? _value.provinceId
          : provinceId // ignore: cast_nullable_to_non_nullable
              as int,
      cityId: null == cityId
          ? _value.cityId
          : cityId // ignore: cast_nullable_to_non_nullable
              as int,
      city: null == city
          ? _value.city
          : city // ignore: cast_nullable_to_non_nullable
              as String,
      province: null == province
          ? _value.province
          : province // ignore: cast_nullable_to_non_nullable
              as String,
      completeAddress: null == completeAddress
          ? _value.completeAddress
          : completeAddress // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AddAddressRequestImpl implements _AddAddressRequest {
  _$AddAddressRequestImpl(
      {@JsonKey(name: 'province_id') required this.provinceId,
      @JsonKey(name: 'city_id') required this.cityId,
      required this.city,
      required this.province,
      @JsonKey(name: 'complete_address') required this.completeAddress});

  factory _$AddAddressRequestImpl.fromJson(Map<String, dynamic> json) =>
      _$$AddAddressRequestImplFromJson(json);

  @override
  @JsonKey(name: 'province_id')
  final int provinceId;
  @override
  @JsonKey(name: 'city_id')
  final int cityId;
  @override
  final String city;
  @override
  final String province;
  @override
  @JsonKey(name: 'complete_address')
  final String completeAddress;

  @override
  String toString() {
    return 'AddAddressRequest(provinceId: $provinceId, cityId: $cityId, city: $city, province: $province, completeAddress: $completeAddress)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddAddressRequestImpl &&
            (identical(other.provinceId, provinceId) ||
                other.provinceId == provinceId) &&
            (identical(other.cityId, cityId) || other.cityId == cityId) &&
            (identical(other.city, city) || other.city == city) &&
            (identical(other.province, province) ||
                other.province == province) &&
            (identical(other.completeAddress, completeAddress) ||
                other.completeAddress == completeAddress));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, provinceId, cityId, city, province, completeAddress);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AddAddressRequestImplCopyWith<_$AddAddressRequestImpl> get copyWith =>
      __$$AddAddressRequestImplCopyWithImpl<_$AddAddressRequestImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AddAddressRequestImplToJson(
      this,
    );
  }
}

abstract class _AddAddressRequest implements AddAddressRequest {
  factory _AddAddressRequest(
      {@JsonKey(name: 'province_id') required final int provinceId,
      @JsonKey(name: 'city_id') required final int cityId,
      required final String city,
      required final String province,
      @JsonKey(name: 'complete_address')
      required final String completeAddress}) = _$AddAddressRequestImpl;

  factory _AddAddressRequest.fromJson(Map<String, dynamic> json) =
      _$AddAddressRequestImpl.fromJson;

  @override
  @JsonKey(name: 'province_id')
  int get provinceId;
  @override
  @JsonKey(name: 'city_id')
  int get cityId;
  @override
  String get city;
  @override
  String get province;
  @override
  @JsonKey(name: 'complete_address')
  String get completeAddress;
  @override
  @JsonKey(ignore: true)
  _$$AddAddressRequestImplCopyWith<_$AddAddressRequestImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
