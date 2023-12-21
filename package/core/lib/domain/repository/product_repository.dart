import 'package:core/domain/entities/product.dart';
import 'package:dartz/dartz.dart';
import 'package:core/utils/failure.dart';

abstract class ProductRepository {
  Future<Either<Failure, List<Product>>> getAll();
}
