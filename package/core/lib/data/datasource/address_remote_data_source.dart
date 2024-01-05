// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:core/data/models/remote/city_model.dart';
import 'package:core/data/models/remote/province_model.dart';
import 'package:core/service/api_service.dart';

abstract class AddressRemoteDataSource {
  Future<List<ProvinceModel>> getProvince();
  Future<List<CityModel>> getCity(int idProvince);
}

class AddressRemoteDataSourceImpl extends AddressRemoteDataSource {
  final ApiService apiService;
  AddressRemoteDataSourceImpl(this.apiService);

  @override
  Future<List<ProvinceModel>> getProvince() {
    return apiService.getProvince();
  }

  @override
  Future<List<CityModel>> getCity(int idProvince) {
    return apiService.getCity(idProvince);
  }
}
