import 'package:freezed_annotation/freezed_annotation.dart';

part 'upload_image_picture_response.freezed.dart';
part 'upload_image_picture_response.g.dart';

@freezed
class UploadImagePictureResponse with _$UploadImagePictureResponse {
  const factory UploadImagePictureResponse({
    required String message,
    required String path,
  }) = _UploadImagePictureResponse;

  factory UploadImagePictureResponse.fromJson(Map<String, dynamic> json) =>
      _$UploadImagePictureResponseFromJson(json);
}
