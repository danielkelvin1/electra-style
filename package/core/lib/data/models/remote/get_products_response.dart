import 'package:freezed_annotation/freezed_annotation.dart';
import 'product_model.dart';

part 'get_products_response.freezed.dart';
part 'get_products_response.g.dart';

@freezed
class GetProductsResponse with _$GetProductsResponse {
  const factory GetProductsResponse({
    required int currentPage,
    required int perPage,
    required int total,
    required List<ProductModel> data,
  }) = _GetProductsResponse;

  factory GetProductsResponse.fromJson(Map<String, dynamic> json) =>
      _$GetProductsResponseFromJson(json);
}
