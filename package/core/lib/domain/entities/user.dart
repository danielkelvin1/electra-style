import 'package:equatable/equatable.dart';

class User extends Equatable {
  final String name;
  final String username;
  final String email;
  final String? emailVerifiedAt;
  final String? imageUrl;
  final String? oldPassword;
  final String roles;
  final String gender;

  const User({
    required this.name,
    required this.username,
    required this.email,
    this.emailVerifiedAt,
    this.imageUrl,
    this.oldPassword,
    required this.roles,
    required this.gender,
  });

  User copyWith({
    String? name,
    String? username,
    String? email,
    String? emailVerifiedAt,
    String? imageUrl,
    String? oldPassword,
    String? roles,
    String? gender,
  }) {
    return User(
      name: name ?? this.name,
      username: username ?? this.username,
      email: email ?? this.email,
      emailVerifiedAt: emailVerifiedAt ?? this.emailVerifiedAt,
      imageUrl: imageUrl ?? this.imageUrl,
      oldPassword: oldPassword ?? this.oldPassword,
      roles: roles ?? this.roles,
      gender: gender ?? this.gender,
    );
  }

  @override
  // TODO: implement props
  List<Object?> get props => [
        name,
        username,
        email,
        emailVerifiedAt,
        imageUrl,
        roles,
        oldPassword,
        gender,
      ];
}
