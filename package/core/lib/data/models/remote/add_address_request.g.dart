// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'add_address_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AddAddressRequestImpl _$$AddAddressRequestImplFromJson(
        Map<String, dynamic> json) =>
    _$AddAddressRequestImpl(
      provinceId: json['province_id'] as int,
      cityId: json['city_id'] as int,
      city: json['city'] as String,
      province: json['province'] as String,
      completeAddress: json['complete_address'] as String,
    );

Map<String, dynamic> _$$AddAddressRequestImplToJson(
        _$AddAddressRequestImpl instance) =>
    <String, dynamic>{
      'province_id': instance.provinceId,
      'city_id': instance.cityId,
      'city': instance.city,
      'province': instance.province,
      'complete_address': instance.completeAddress,
    };
