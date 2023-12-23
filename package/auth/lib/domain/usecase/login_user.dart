import 'package:core/domain/entities/user.dart';
import 'package:core/domain/repository/auth_repository.dart';
import 'package:core/utils/failure.dart';
import 'package:dartz/dartz.dart';

class LoginUser {
  final AuthRepository _repository;

  LoginUser(this._repository);

  Future<Either<Failure, User>> execute(String email, String password) =>
      _repository.login(email, password);
}
