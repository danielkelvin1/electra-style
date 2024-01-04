import 'package:core/data/models/remote/province_model.dart';
import 'package:core/data/models/remote/upload_image_picture_model.dart';
import 'package:core/data/models/remote/upload_image_picture_response.dart';
import 'package:core/data/models/remote/user_model.dart';
import 'package:core/service/api_service.dart';

abstract class UserRemoteDataSource {
  Future<UploadImagePictureResponse> changePicture(
      UploadImagePictureModel picture);

  Future<UserModel> getUser();

  Future<UserModel> updateuser(UserModel user);
}

class UserRemoteDataSourceImpl extends UserRemoteDataSource {
  final ApiService apiService;

  UserRemoteDataSourceImpl(this.apiService);

  @override
  Future<UploadImagePictureResponse> changePicture(
      UploadImagePictureModel picture) {
    return apiService.changePicture(picture);
  }

  @override
  Future<UserModel> getUser() {
    return apiService.getUser();
  }

  @override
  Future<UserModel> updateuser(UserModel user) {
    return apiService.updateUser(user);
  }
}
