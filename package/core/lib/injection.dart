import 'package:auth/persentation/bloc/login/login_bloc.dart';
import 'package:auth/persentation/bloc/register/register_bloc.dart';
import 'package:core/config/dio_module.dart';
import 'package:core/data/datasource/auth_remote_data_source.dart';
import 'package:core/data/repository/auth_repository.dart';
import 'package:core/domain/repository/auth_repository.dart';
import 'package:core/service/api_service.dart';
import 'package:dio/dio.dart';
import 'package:kiwi/kiwi.dart';
import 'package:auth/domain/usecase/login_user.dart';
import 'package:auth/domain/usecase/register_user.dart';

part 'injection.g.dart';

abstract class Injection {
  @Register.singleton(Dio, from: DioModule, name: 'dio')
  @Register.factory(ApiService, resolvers: {Dio: 'dio'}, name: 'api_service')
  @Register.factory(AuthRemoteDataSource,
      from: AuthRemoteDataSourceImpl,
      resolvers: {ApiService: 'api_service'},
      name: 'auth_remote')
  @Register.factory(AuthRepository,
      from: AuthRepositoryImpl,
      resolvers: {AuthRemoteDataSource: 'auth_remote'},
      name: 'auth_repo')
  //usecase
  @Register.singleton(LoginUser,
      resolvers: {AuthRepository: 'auth_repo'}, name: 'login_user')
  @Register.singleton(RegisterUSer,
      resolvers: {AuthRepository: 'auth_repo'}, name: 'register_user')
  //bloc
  @Register.factory(LoginBloc, resolvers: {LoginUser: 'login_user'})
  @Register.factory(RegisterBloc, resolvers: {RegisterUSer: 'register_user'})
  void configure();
}

class AppModule {
  static void setup() {
    var injection = _$Injection();
    injection.configure();
  }
}
