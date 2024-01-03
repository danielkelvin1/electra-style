import 'package:core/data/models/remote/user_model.dart';
import 'package:core/domain/entities/user.dart';
import 'package:core/domain/repository/user_repository.dart';
import 'package:core/utils/failure.dart';
import 'package:dartz/dartz.dart';

class UpdateUser {
  final UserRepository userRepository;

  UpdateUser(this.userRepository);

  Future<Either<Failure, User>> execute(UserModel user) =>
      userRepository.updateUser(user);
}
