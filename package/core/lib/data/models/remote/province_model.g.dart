// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'province_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ProvinceModelImpl _$$ProvinceModelImplFromJson(Map<String, dynamic> json) =>
    _$ProvinceModelImpl(
      id: json['id'],
      userId: json['user_id'] as int?,
      province: json['province'] as String,
    );

Map<String, dynamic> _$$ProvinceModelImplToJson(_$ProvinceModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'user_id': instance.userId,
      'province': instance.province,
    };
