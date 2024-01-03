import 'package:core/data/models/remote/upload_image_picture_model.dart';
import 'package:core/data/models/remote/upload_image_picture_response.dart';
import 'package:core/data/models/remote/user_model.dart';
import 'package:core/domain/entities/user.dart';
import 'package:core/utils/failure.dart';
import 'package:dartz/dartz.dart';

abstract class UserRepository {
  Future<Either<Failure, UploadImagePictureResponse>> changePictureUser(
    UploadImagePictureModel picture,
  );

  Future<Either<Failure, User>> getUser();

  Future<Either<Failure, User>> updateUser(UserModel user);
}
