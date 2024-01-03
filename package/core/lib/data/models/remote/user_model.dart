import 'package:core/domain/entities/user.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_model.freezed.dart';
part 'user_model.g.dart';

@freezed
class UserModel with _$UserModel {
  const UserModel._();
  const factory UserModel({
    @JsonKey(name: "name") required String name,
    @JsonKey(name: "username") required String username,
    @JsonKey(name: "password") required String? password,
    @JsonKey(name: "email") String? email,
    @JsonKey(name: "email_verified_at") String? emailVerifiedAt,
    @JsonKey(name: "image_url") String? imageUrl,
    @JsonKey(name: "roles") String? roles,
    @JsonKey(name: "gender") required String gender,
    @JsonKey(name: 'old_password') String? oldPassword,
  }) = _UserModel;

  factory UserModel.fromJson(Map<String, dynamic> json) =>
      _$UserModelFromJson(json);

  User toEntity() => User(
        name: name,
        username: username,
        email: email ?? '',
        roles: roles ?? '',
        gender: gender,
        imageUrl: imageUrl,
        oldPassword: oldPassword,
      );
}
