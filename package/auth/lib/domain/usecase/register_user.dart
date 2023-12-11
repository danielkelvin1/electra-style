import 'package:core/data/models/remote/register_request.dart';
import 'package:core/domain/entities/user.dart';
import 'package:core/domain/repository/auth_repository.dart';
import 'package:core/utils/failure.dart';
import 'package:dartz/dartz.dart';

class RegisterUSer {
  final AuthRepository _repository;

  RegisterUSer(this._repository);

  Future<Either<Failure, User>> execute(RegisterRequest register) =>
      _repository.register(register);
}
