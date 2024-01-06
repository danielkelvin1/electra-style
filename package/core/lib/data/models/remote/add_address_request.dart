import 'package:freezed_annotation/freezed_annotation.dart';

part 'add_address_request.freezed.dart';
part 'add_address_request.g.dart';

@freezed
class AddAddressRequest with _$AddAddressRequest {
  factory AddAddressRequest({
    @JsonKey(name: 'province_id') required int provinceId,
    @JsonKey(name: 'city_id') required int cityId,
    required String city,
    required String province,
    @JsonKey(name: 'complete_address') required String completeAddress,
  }) = _AddAddressRequest;

  factory AddAddressRequest.fromJson(Map<String, dynamic> json) =>
      _$AddAddressRequestFromJson(json);
}
