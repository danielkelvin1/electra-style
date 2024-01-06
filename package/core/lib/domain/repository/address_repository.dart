import 'package:core/data/models/remote/add_address_request.dart';
import 'package:core/domain/entities/city.dart';
import 'package:core/domain/entities/province.dart';
import 'package:core/utils/failure.dart';
import 'package:dartz/dartz.dart';

abstract class AddressRepository {
  Future<Either<Failure, List<Province>>> getProvince();
  Future<Either<Failure, List<City>>> getCity(int idProvince);
  Future<Either<Failure, String>> addAddress(
      AddAddressRequest addAddressRequest);
}
