import 'package:core/data/models/remote/user_model.dart';
import 'package:core/service/api_service.dart';

abstract class AuthRemoteDataSource {
  Future<UserModel> login(String email, String password);
}

class AuthRemoteDataSourceImpl extends AuthRemoteDataSource {
  final ApiService apiService;

  AuthRemoteDataSourceImpl(this.apiService);

  @override
  Future<UserModel> login(String email, String password) {
    return apiService.login(email, password);
  }
}
