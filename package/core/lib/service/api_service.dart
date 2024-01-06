import 'package:core/data/models/remote/add_address_request.dart';
import 'package:core/data/models/remote/city_model.dart';
import 'package:core/data/models/remote/get_city_response.dart';
import 'package:core/data/models/remote/get_products_response.dart';
import 'package:core/data/models/remote/get_province_response.dart';
import 'package:core/data/models/remote/login_response.dart';
import 'package:core/data/models/remote/product_model.dart';
import 'package:core/data/models/remote/province_model.dart';
import 'package:core/data/models/remote/register_request.dart';
import 'package:core/data/models/remote/register_response.dart';
import 'package:core/data/models/remote/upload_image_picture_model.dart';
import 'package:core/data/models/remote/upload_image_picture_response.dart';
import 'package:core/data/models/remote/user_model.dart';
import 'package:core/service/local_storage.dart';
import 'package:core/utils/constant.dart';
import 'package:core/utils/exception.dart';
import 'package:dio/dio.dart';

class ApiService {
  final Dio dio;

  ApiService(this.dio);

  Future<UserModel> login(String email, String password) async {
    final loginData = {"email": email, "password": password};
    final response = await dio.post('$baseUrl/login', data: loginData);
    if (response.statusCode == 200) {
      final loginResponse = LoginResponse.fromJson(response.data);
      await write(loginResponse.accessToken);
      return loginResponse.data;
    } else {
      throw ServerException();
    }
  }

  Future<UserModel> register(RegisterRequest register) async {
    final response =
        await dio.post('$baseUrl/register', data: register.toJson());

    if (response.statusCode == 201) {
      final loginResponse = RegisterResponse.fromJson(response.data);
      await write(loginResponse.accessToken);
      return loginResponse.data;
    } else {
      throw ServerException();
    }
  }

  Future<List<ProductModel>> getProduct() async {
    final response = await dio.get('$baseUrl/product');
    if (response.statusCode == 200) {
      return GetProductsResponse.fromJson(response.data).data;
    } else {
      throw ServerException();
    }
  }

  Future<ProductModel> getDetailProduct(int id) async {
    final response = await dio.get('$baseUrl/product/$id');
    if (response.statusCode == 200) {
      return ProductModel.fromJson(response.data);
    } else {
      throw ServerException();
    }
  }

  Future<UploadImagePictureResponse> changePicture(
      UploadImagePictureModel picture) async {
    FormData pictureData = FormData.fromMap({'picture': picture.picture});
    final token = await read();
    final response = await dio.post('$baseUrl/user/picture',
        data: pictureData,
        options: Options(headers: {'Authorization': 'Bearer $token'}));

    if (response.statusCode == 201) {
      return UploadImagePictureResponse.fromJson(response.data);
    } else {
      throw ServerException();
    }
  }

  Future<UserModel> getUser() async {
    final token = await read();
    final response = await dio.get(
      '$baseUrl/user',
      options: Options(headers: {'Authorization': 'Bearer $token'}),
    );

    if (response.statusCode == 200) {
      return UserModel.fromJson(response.data['data']);
    } else {
      throw ServerException();
    }
  }

  Future<UserModel> updateUser(UserModel user) async {
    final token = await read();
    final response = await dio.put(
      '$baseUrl/user',
      data: user.toJson(),
      options: Options(
        headers: {'Authorization': 'Bearer $token'},
      ),
    );
    if (response.statusCode == 200) {
      return UserModel.fromJson(response.data['data']);
    } else {
      throw ServerException();
    }
  }

  Future<List<ProvinceModel>> getProvince() async {
    final response = await dio.get(
      '$baseUrlRajaOngkir/province',
      options: Options(
        headers: {
          'key': apiTokenRajaOngkir,
        },
      ),
    );

    if (response.statusCode == 200) {
      return GetProvinceResponse.fromJson(response.data['rajaongkir']).results;
    } else {
      throw ServerException();
    }
  }

  Future<List<CityModel>> getCity(int idProvince) async {
    final response = await dio.get(
      '$baseUrlRajaOngkir/city?province=$idProvince',
      options: Options(
        headers: {
          'key': apiTokenRajaOngkir,
        },
      ),
    );

    if (response.statusCode == 200) {
      return GetCityResponse.fromJson(response.data['rajaongkir']).results;
    } else {
      throw ServerException();
    }
  }

  Future<String> addAddress(AddAddressRequest addAddressRequest) async {
    final token = await read();
    final response = await dio.post(
      '$baseUrl/user/address',
      data: addAddressRequest.toJson(),
      options: Options(
        headers: {'Authorization': 'Bearer $token'},
      ),
    );
    if (response.statusCode == 201) {
      return response.data['message'];
    } else {
      throw ServerException();
    }
  }
}
