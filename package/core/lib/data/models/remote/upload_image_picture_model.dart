import 'package:dio/dio.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'upload_image_picture_model.freezed.dart';

@freezed
class UploadImagePictureModel with _$UploadImagePictureModel {
  factory UploadImagePictureModel({
    required MultipartFile picture,
  }) = _UploadImagePictureModel;
}
