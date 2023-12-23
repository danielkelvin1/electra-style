import 'package:core/domain/entities/user.dart';
import 'package:meta/meta.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:convert';

part 'user_model.freezed.dart';
part 'user_model.g.dart';

@freezed
class UserModel with _$UserModel {
  const UserModel._();
  const factory UserModel({
    @JsonKey(name: "name") required String name,
    @JsonKey(name: "username") required String username,
    @JsonKey(name: "email") required String email,
    @JsonKey(name: "email_verified_at") required String? emailVerifiedAt,
    @JsonKey(name: "image_url") required String? imageUrl,
    @JsonKey(name: "roles") required String? roles,
    @JsonKey(name: "gender") required String gender,
  }) = _UserModel;

  factory UserModel.fromJson(Map<String, dynamic> json) =>
      _$UserModelFromJson(json);

  User toEntity() => User(
        name: name,
        username: username,
        email: email,
        roles: roles ?? '',
        gender: gender,
      );
}
