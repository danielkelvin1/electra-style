import 'package:core/domain/entities/city.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'city_model.freezed.dart';
part 'city_model.g.dart';

@freezed
class CityModel with _$CityModel {
  const CityModel._();
  const factory CityModel({
    @JsonKey(name: 'city_id') required String id,
    @JsonKey(name: 'city_name') required String city,
  }) = _CityModel;

  factory CityModel.fromJson(Map<String, dynamic> json) =>
      _$CityModelFromJson(json);

  City toEntity() => City(
        id: int.parse(id),
        city: city,
      );
}
