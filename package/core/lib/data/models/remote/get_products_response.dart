import 'package:freezed_annotation/freezed_annotation.dart';
import 'product_model.dart';

part 'get_products_response.freezed.dart';
part 'get_products_response.g.dart';

@freezed
class GetProductsResponse with _$GetProductsResponse {
  const factory GetProductsResponse({
    @JsonKey(name: 'current_page') required int currentPage,
    @JsonKey(name: 'per_page') required int perPage,
    required int total,
    required List<ProductModel> data,
  }) = _GetProductsResponse;

  factory GetProductsResponse.fromJson(Map<String, dynamic> json) =>
      _$GetProductsResponseFromJson(json);
}
