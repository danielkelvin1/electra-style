import 'package:core/domain/entities/user.dart';
import 'package:core/domain/repository/user_repository.dart';
import 'package:core/utils/failure.dart';
import 'package:dartz/dartz.dart';

class GetUser {
  final UserRepository userRepository;

  GetUser(this.userRepository);

  Future<Either<Failure, User>> execute() => userRepository.getUser();
}
