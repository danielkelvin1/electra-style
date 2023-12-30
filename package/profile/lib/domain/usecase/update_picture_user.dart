import 'package:core/data/models/remote/upload_image_picture_model.dart';
import 'package:core/data/models/remote/upload_image_picture_response.dart';
import 'package:core/domain/repository/user_repository.dart';
import 'package:core/utils/failure.dart';
import 'package:dartz/dartz.dart';

class UpdatePictureUser {
  final UserRepository userRepository;

  UpdatePictureUser(this.userRepository);

  Future<Either<Failure, UploadImagePictureResponse>> execute(
          UploadImagePictureModel picture) =>
      userRepository.changePictureUser(picture);
}
