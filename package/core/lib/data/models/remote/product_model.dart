import 'package:core/domain/entities/product.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'product_model.freezed.dart';
part 'product_model.g.dart';

@freezed
class ProductModel with _$ProductModel {
  const ProductModel._();
  const factory ProductModel({
    required String title,
    required String subtitle,
    required String description,
    required String price,
    required List<ImagesModel> images,
  }) = _ProductModel;

  Product toEntity() => Product(
        title: title,
        subtitle: subtitle,
        description: description,
        price: price,
        images: images.map((e) => e.toEntity()).toList(),
      );

  factory ProductModel.fromJson(Map<String, dynamic> json) =>
      _$ProductModelFromJson(json);
}

@freezed
class ImagesModel with _$ImagesModel {
  const ImagesModel._();
  const factory ImagesModel({
    @JsonKey(name: 'image_url') required String imageUrl,
  }) = _ImagesModel;

  factory ImagesModel.fromJson(Map<String, dynamic> json) =>
      _$ImagesModelFromJson(json);

  Image toEntity() => Image(imageUrl: imageUrl);
}
