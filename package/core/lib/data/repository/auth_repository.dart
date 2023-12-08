import 'dart:io';

import 'package:core/data/datasource/auth_remote_data_source.dart';
import 'package:core/domain/entities/user.dart';
import 'package:core/domain/repository/auth_repository.dart';
import 'package:core/utils/exception.dart';
import 'package:core/utils/failure.dart';
import 'package:dartz/dartz.dart';

class AuthRepositoryImpl extends AuthRepository {
  final AuthRemoteDataSource authRemoteDataSource;

  AuthRepositoryImpl(this.authRemoteDataSource);

  @override
  Future<Either<Failure, User>> login(String email, String password) async {
    try {
      final result = await authRemoteDataSource.login(email, password);
      return Right(result.toEntity());
    } on ServerException {
      return const Left(ServerFailure(''));
    } on SocketException {
      return const Left(ConnectionFailure('Failed to connect to the network'));
    }
  }
}
