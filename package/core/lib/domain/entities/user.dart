import 'package:equatable/equatable.dart';

class User extends Equatable {
  final String name;
  final String username;
  final String email;
  final String? emailVerifiedAt;
  final String? imageUrl;
  final String roles;
  final String gender;

  const User({
    required this.name,
    required this.username,
    required this.email,
    this.emailVerifiedAt,
    this.imageUrl,
    required this.roles,
    required this.gender,
  });

  @override
  // TODO: implement props
  List<Object?> get props => [
        name,
        username,
        email,
        emailVerifiedAt,
        imageUrl,
        roles,
        gender,
      ];
}
