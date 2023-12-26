import 'package:core/data/datasource/product_remote_data_source.dart';
import 'package:core/domain/entities/product.dart';
import 'package:core/domain/repository/product_repository.dart';
import 'package:core/utils/failure.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';

class ProductRepositoryImpl extends ProductRepository {
  final ProductRemoteDataSource productRemoteDataSource;

  ProductRepositoryImpl(this.productRemoteDataSource);

  @override
  Future<Either<Failure, List<Product>>> getAll() async {
    try {
      final result = await productRemoteDataSource.getAll();
      return Right(result.map((e) => e.toEntity()).toList());
    } on DioException catch (e) {
      if (e.error.toString().contains('SocketException')) {
        return const Left(ConnectionFailure('Failed Network'));
      }
      if (e.response?.statusCode == 401) {
        return Left(AuthorizationFailure(e.response?.data['error']));
      }
      return const Left(ServerFailure(''));
    }
  }

  @override
  Future<Either<Failure, Product>> getDetail(int id) async {
    try {
      final result = await productRemoteDataSource.getDetail(id);
      return Right(result.toEntity());
    } on DioException catch (e) {
      if (e.error.toString().contains('SocketException')) {
        return const Left(ConnectionFailure('Failed Network'));
      }
      if (e.response?.statusCode == 401) {
        return Left(AuthorizationFailure(e.response?.data['error']));
      }
      return const Left(ServerFailure(''));
    }
  }
}
