import 'package:core/data/datasource/user_remote_data_source.dart';
import 'package:core/data/models/remote/upload_image_picture_model.dart';
import 'package:core/data/models/remote/upload_image_picture_response.dart';
import 'package:core/data/models/remote/user_model.dart';
import 'package:core/domain/entities/user.dart';
import 'package:core/domain/repository/user_repository.dart';
import 'package:core/utils/failure.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';

class UserRepositoryImpl extends UserRepository {
  final UserRemoteDataSource userRemoteDataSource;

  UserRepositoryImpl(this.userRemoteDataSource);

  @override
  Future<Either<Failure, UploadImagePictureResponse>> changePictureUser(
      UploadImagePictureModel picture) async {
    try {
      final result = await userRemoteDataSource.changePicture(picture);
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

  @override
  Future<Either<Failure, User>> getUser() async {
    try {
      final result = await userRemoteDataSource.getUser();
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
  Future<Either<Failure, User>> updateUser(UserModel user) async {
    try {
      final result = await userRemoteDataSource.updateuser(user);
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
