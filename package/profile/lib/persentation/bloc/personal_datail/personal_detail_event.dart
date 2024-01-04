part of 'personal_detail_bloc.dart';

@freezed
class PersonalDetailEvent with _$PersonalDetailEvent {
  factory PersonalDetailEvent.getUser() = _GetUser;
  factory PersonalDetailEvent.changePicture(UploadImagePictureModel picture) =
      _ChangePicture;
  factory PersonalDetailEvent.updateUser(UserModel user) = _UpdateUser;
}
