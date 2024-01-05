import 'package:core/data/models/remote/city_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'get_city_response.freezed.dart';
part 'get_city_response.g.dart';

@freezed
class GetCityResponse with _$GetCityResponse {
  const factory GetCityResponse({
    required List<CityModel> results,
  }) = _GetCityResponse;

  factory GetCityResponse.fromJson(Map<String, dynamic> json) =>
      _$GetCityResponseFromJson(json);
}
