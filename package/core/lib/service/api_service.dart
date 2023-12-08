import 'package:core/data/models/remote/login_response.dart';
import 'package:core/data/models/remote/user_model.dart';
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
      return LoginResponse.fromJson(response.data).data;
    } else {
      throw ServerException();
    }
  }
}
