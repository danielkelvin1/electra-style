import 'package:core/data/models/remote/rating_model.dart';
import 'package:core/data/models/remote/user_model.dart';
import 'package:core/domain/entities/product.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'product_model.freezed.dart';
part 'product_model.g.dart';

@freezed
class ProductModel with _$ProductModel {
  const ProductModel._();
  const factory ProductModel({
    required int id,
    required String title,
    required String subtitle,
    required String description,
    required String price,
    required List<ImagesProductModel> images,
    required List<RatingModel>? ratings,
    required UserModel? user,
  }) = _ProductModel;

  Product toEntity() => Product(
        id: id,
        title: title,
        subtitle: subtitle,
        description: description,
        price: price,
        ratings: ratings?.map((e) => e.toEntity()).toList(),
        images: images.map((e) => e.toEntity()).toList(),
        seller: user?.toEntity(),
      );

  factory ProductModel.fromJson(Map<String, dynamic> json) =>
      _$ProductModelFromJson(json);
}

@freezed
class ImagesProductModel with _$ImagesProductModel {
  const ImagesProductModel._();
  const factory ImagesProductModel({
    @JsonKey(name: 'image_url') required String imageUrl,
  }) = _ImagesProductModel;

  factory ImagesProductModel.fromJson(Map<String, dynamic> json) =>
      _$ImagesProductModelFromJson(json);

  ImageProduct toEntity() => ImageProduct(imageUrl: imageUrl);
}
