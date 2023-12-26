// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:core/domain/entities/rating.dart';
import 'package:core/domain/entities/user.dart';
import 'package:equatable/equatable.dart';

class Product extends Equatable {
  final int id;
  final String title;
  final String subtitle;
  final String description;
  final String price;
  final List<ImageProduct> images;
  final List<Rating>? ratings;
  final User? seller;
  const Product(
      {required this.id,
      required this.title,
      required this.subtitle,
      required this.description,
      required this.price,
      required this.images,
      this.ratings,
      this.seller});

  @override
  // TODO: implement props
  List<Object?> get props =>
      [title, subtitle, description, price, images, ratings, seller];
}

class ImageProduct extends Equatable {
  final String imageUrl;

  const ImageProduct({required this.imageUrl});

  @override
  // TODO: implement props
  List<Object?> get props => [imageUrl];
}
