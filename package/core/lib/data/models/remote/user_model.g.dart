// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$UserModelImpl _$$UserModelImplFromJson(Map<String, dynamic> json) =>
    _$UserModelImpl(
      name: json['name'] as String,
      username: json['username'] as String,
      email: json['email'] as String,
      emailVerifiedAt: json['email_verified_at'],
      imageUrl: json['image_url'],
      roles: json['roles'] as String,
      gender: json['gender'] as String,
    );

Map<String, dynamic> _$$UserModelImplToJson(_$UserModelImpl instance) =>
    <String, dynamic>{
      'name': instance.name,
      'username': instance.username,
      'email': instance.email,
      'email_verified_at': instance.emailVerifiedAt,
      'image_url': instance.imageUrl,
      'roles': instance.roles,
      'gender': instance.gender,
    };
