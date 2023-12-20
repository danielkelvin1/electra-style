// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'get_products_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

GetProductsResponse _$GetProductsResponseFromJson(Map<String, dynamic> json) {
  return _GetProductsResponse.fromJson(json);
}

/// @nodoc
mixin _$GetProductsResponse {
  int get currentPage => throw _privateConstructorUsedError;
  int get perPage => throw _privateConstructorUsedError;
  int get total => throw _privateConstructorUsedError;
  List<ProductModel> get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GetProductsResponseCopyWith<GetProductsResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetProductsResponseCopyWith<$Res> {
  factory $GetProductsResponseCopyWith(
          GetProductsResponse value, $Res Function(GetProductsResponse) then) =
      _$GetProductsResponseCopyWithImpl<$Res, GetProductsResponse>;
  @useResult
  $Res call({int currentPage, int perPage, int total, List<ProductModel> data});
}

/// @nodoc
class _$GetProductsResponseCopyWithImpl<$Res, $Val extends GetProductsResponse>
    implements $GetProductsResponseCopyWith<$Res> {
  _$GetProductsResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? currentPage = null,
    Object? perPage = null,
    Object? total = null,
    Object? data = null,
  }) {
    return _then(_value.copyWith(
      currentPage: null == currentPage
          ? _value.currentPage
          : currentPage // ignore: cast_nullable_to_non_nullable
              as int,
      perPage: null == perPage
          ? _value.perPage
          : perPage // ignore: cast_nullable_to_non_nullable
              as int,
      total: null == total
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as int,
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as List<ProductModel>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$GetProductsResponseImplCopyWith<$Res>
    implements $GetProductsResponseCopyWith<$Res> {
  factory _$$GetProductsResponseImplCopyWith(_$GetProductsResponseImpl value,
          $Res Function(_$GetProductsResponseImpl) then) =
      __$$GetProductsResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int currentPage, int perPage, int total, List<ProductModel> data});
}

/// @nodoc
class __$$GetProductsResponseImplCopyWithImpl<$Res>
    extends _$GetProductsResponseCopyWithImpl<$Res, _$GetProductsResponseImpl>
    implements _$$GetProductsResponseImplCopyWith<$Res> {
  __$$GetProductsResponseImplCopyWithImpl(_$GetProductsResponseImpl _value,
      $Res Function(_$GetProductsResponseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? currentPage = null,
    Object? perPage = null,
    Object? total = null,
    Object? data = null,
  }) {
    return _then(_$GetProductsResponseImpl(
      currentPage: null == currentPage
          ? _value.currentPage
          : currentPage // ignore: cast_nullable_to_non_nullable
              as int,
      perPage: null == perPage
          ? _value.perPage
          : perPage // ignore: cast_nullable_to_non_nullable
              as int,
      total: null == total
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as int,
      data: null == data
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as List<ProductModel>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$GetProductsResponseImpl implements _GetProductsResponse {
  const _$GetProductsResponseImpl(
      {required this.currentPage,
      required this.perPage,
      required this.total,
      required final List<ProductModel> data})
      : _data = data;

  factory _$GetProductsResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$GetProductsResponseImplFromJson(json);

  @override
  final int currentPage;
  @override
  final int perPage;
  @override
  final int total;
  final List<ProductModel> _data;
  @override
  List<ProductModel> get data {
    if (_data is EqualUnmodifiableListView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_data);
  }

  @override
  String toString() {
    return 'GetProductsResponse(currentPage: $currentPage, perPage: $perPage, total: $total, data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetProductsResponseImpl &&
            (identical(other.currentPage, currentPage) ||
                other.currentPage == currentPage) &&
            (identical(other.perPage, perPage) || other.perPage == perPage) &&
            (identical(other.total, total) || other.total == total) &&
            const DeepCollectionEquality().equals(other._data, _data));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, currentPage, perPage, total,
      const DeepCollectionEquality().hash(_data));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetProductsResponseImplCopyWith<_$GetProductsResponseImpl> get copyWith =>
      __$$GetProductsResponseImplCopyWithImpl<_$GetProductsResponseImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$GetProductsResponseImplToJson(
      this,
    );
  }
}

abstract class _GetProductsResponse implements GetProductsResponse {
  const factory _GetProductsResponse(
      {required final int currentPage,
      required final int perPage,
      required final int total,
      required final List<ProductModel> data}) = _$GetProductsResponseImpl;

  factory _GetProductsResponse.fromJson(Map<String, dynamic> json) =
      _$GetProductsResponseImpl.fromJson;

  @override
  int get currentPage;
  @override
  int get perPage;
  @override
  int get total;
  @override
  List<ProductModel> get data;
  @override
  @JsonKey(ignore: true)
  _$$GetProductsResponseImplCopyWith<_$GetProductsResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
