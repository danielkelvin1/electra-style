// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ProductModelImpl _$$ProductModelImplFromJson(Map<String, dynamic> json) =>
    _$ProductModelImpl(
      id: json['id'] as int,
      title: json['title'] as String,
      subtitle: json['subtitle'] as String,
      description: json['description'] as String,
      price: json['price'] as String,
      images: (json['images'] as List<dynamic>)
          .map((e) => ImagesProductModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      ratings: (json['ratings'] as List<dynamic>?)
          ?.map((e) => RatingModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      user: json['user'] == null
          ? null
          : UserModel.fromJson(json['user'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$ProductModelImplToJson(_$ProductModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'subtitle': instance.subtitle,
      'description': instance.description,
      'price': instance.price,
      'images': instance.images,
      'ratings': instance.ratings,
      'user': instance.user,
    };

_$ImagesProductModelImpl _$$ImagesProductModelImplFromJson(
        Map<String, dynamic> json) =>
    _$ImagesProductModelImpl(
      imageUrl: json['image_url'] as String,
    );

Map<String, dynamic> _$$ImagesProductModelImplToJson(
        _$ImagesProductModelImpl instance) =>
    <String, dynamic>{
      'image_url': instance.imageUrl,
    };
