import 'package:core/data/models/remote/province_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'get_province_response.freezed.dart';
part 'get_province_response.g.dart';

@freezed
class GetProvinceResponse with _$GetProvinceResponse {
  const factory GetProvinceResponse({
    required List<ProvinceModel> results,
  }) = _GetProvinceResponse;

  factory GetProvinceResponse.fromJson(Map<String, dynamic> json) =>
      _$GetProvinceResponseFromJson(json);
}
