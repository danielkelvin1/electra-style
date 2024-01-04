import 'package:core/domain/entities/province.dart';
import 'package:core/utils/failure.dart';
import 'package:dartz/dartz.dart';

abstract class AddressRepository {
  Future<Either<Failure, List<Province>>> getProvince();
}
