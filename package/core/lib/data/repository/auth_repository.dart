import 'dart:io';

import 'package:core/data/datasource/auth_remote_data_source.dart';
import 'package:core/data/models/remote/register_request.dart';
import 'package:core/domain/entities/user.dart';
import 'package:core/domain/repository/auth_repository.dart';
import 'package:core/utils/exception.dart';
import 'package:core/utils/failure.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';

class AuthRepositoryImpl extends AuthRepository {
  final AuthRemoteDataSource authRemoteDataSource;

  AuthRepositoryImpl(this.authRemoteDataSource);

  @override
  Future<Either<Failure, User>> login(String email, String password) async {
    try {
      final result = await authRemoteDataSource.login(email, password);
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

  @override
  Future<Either<Failure, User>> register(RegisterRequest register) async {
    try {
      final result = await authRemoteDataSource.register(register);
      return Right(result.toEntity());
    } on DioException catch (e) {
      if (e.error.toString().contains('SocketException')) {
        return const Left(ConnectionFailure('Failed Network'));
      }
      if (e.response?.statusCode == 422) {
        return Left(ValidationFailure(e.response?.data['message']));
      }
      return const Left(ServerFailure(''));
    }
  }
}
