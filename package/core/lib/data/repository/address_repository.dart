import 'package:core/data/datasource/address_remote_data_source.dart';
import 'package:core/data/models/remote/add_address_request.dart';
import 'package:core/domain/entities/city.dart';
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

  @override
  Future<Either<Failure, List<City>>> getCity(int idProvince) async {
    try {
      final result = await addressRemoteDataSource.getCity(idProvince);
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
  Future<Either<Failure, String>> addAddress(
      AddAddressRequest addAddressRequest) async {
    try {
      final result =
          await addressRemoteDataSource.addAddress(addAddressRequest);
      return Right(result);
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
