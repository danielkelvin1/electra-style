import 'package:core/data/models/remote/register_request.dart';
import 'package:core/domain/entities/user.dart';
import 'package:core/utils/failure.dart';
import 'package:dartz/dartz.dart';

abstract class AuthRepository {
  Future<Either<Failure, User>> login(String email, String password);
  Future<Either<Failure, User>> register(RegisterRequest register);
}
