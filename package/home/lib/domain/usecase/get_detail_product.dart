import 'package:core/domain/entities/product.dart';
import 'package:core/domain/repository/product_repository.dart';
import 'package:core/utils/failure.dart';
import 'package:dartz/dartz.dart';

class GetDetailProduct {
  final ProductRepository repository;

  GetDetailProduct(this.repository);

  Future<Either<Failure, Product>> execute(int id) => repository.getDetail(id);
}
