// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_province_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$GetProvinceResponseImpl _$$GetProvinceResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$GetProvinceResponseImpl(
      results: (json['results'] as List<dynamic>)
          .map((e) => ProvinceModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$GetProvinceResponseImplToJson(
        _$GetProvinceResponseImpl instance) =>
    <String, dynamic>{
      'results': instance.results,
    };
