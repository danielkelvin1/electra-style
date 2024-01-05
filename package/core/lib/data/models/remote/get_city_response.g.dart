// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_city_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$GetCityResponseImpl _$$GetCityResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$GetCityResponseImpl(
      results: (json['results'] as List<dynamic>)
          .map((e) => CityModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$GetCityResponseImplToJson(
        _$GetCityResponseImpl instance) =>
    <String, dynamic>{
      'results': instance.results,
    };
