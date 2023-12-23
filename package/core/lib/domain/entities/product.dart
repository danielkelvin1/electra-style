// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:equatable/equatable.dart';

class Product extends Equatable {
  final String title;
  final String subtitle;
  final String description;
  final String price;
  final List<Image> images;
  const Product({
    required this.title,
    required this.subtitle,
    required this.description,
    required this.price,
    required this.images,
  });

  @override
  // TODO: implement props
  List<Object?> get props => [
        title,
        subtitle,
        description,
        price,
        images,
      ];
}

class Image extends Equatable {
  final String imageUrl;

  const Image({required this.imageUrl});

  @override
  // TODO: implement props
  List<Object?> get props => [imageUrl];
}
