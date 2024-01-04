import 'package:core/data/datasource/address_remote_data_source.dart';
import 'package:core/domain/entities/province.dart';
import 'package:core/domain/repository/address_repository.dart';
import 'package:core/utils/failure.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';

class AddressRepositoryImpl extends AddressRepository {
  final AddressRemoteDataSource addressRemoteDataSource;

  AddressRepositoryImpl(this.addressRemoteDataSource);

  @override
  Future<Either<Failure, List<Province>>> getProvince() async {
    try {
      final result = await addressRemoteDataSource.getProvince();
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
}