import 'package:core/domain/entities/product.dart';
import 'package:core/domain/repository/product_repository.dart';
import 'package:core/utils/failure.dart';
import 'package:dartz/dartz.dart';

class GetAllProductsHome {
  final ProductRepository _repository;

  GetAllProductsHome(this._repository);

  Future<Either<Failure, List<Product>>> execute() => _repository.getAll();
}
