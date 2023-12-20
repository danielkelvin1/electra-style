// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_products_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$GetProductsResponseImpl _$$GetProductsResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$GetProductsResponseImpl(
      currentPage: json['currentPage'] as int,
      perPage: json['perPage'] as int,
      total: json['total'] as int,
      data: (json['data'] as List<dynamic>)
          .map((e) => ProductModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$GetProductsResponseImplToJson(
        _$GetProductsResponseImpl instance) =>
    <String, dynamic>{
      'currentPage': instance.currentPage,
      'perPage': instance.perPage,
      'total': instance.total,
      'data': instance.data,
    };
