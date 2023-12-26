import 'package:auth/persentation/bloc/login/login_bloc.dart';
import 'package:auth/persentation/bloc/register/register_bloc.dart';
import 'package:core/config/dio_module.dart';
import 'package:core/data/datasource/auth_remote_data_source.dart';
import 'package:core/data/datasource/product_remote_data_source.dart';
import 'package:core/data/repository/auth_repository.dart';
import 'package:core/data/repository/product_repository.dart';
import 'package:core/domain/repository/auth_repository.dart';
import 'package:core/domain/repository/product_repository.dart';
import 'package:core/service/api_service.dart';
import 'package:dio/dio.dart';
import 'package:home/domain/usecase/get_all_products_home.dart';
import 'package:home/domain/usecase/get_detail_product.dart';
import 'package:home/persentation/bloc/get_all_product_home/get_all_product_home_bloc.dart';
import 'package:home/persentation/bloc/get_detail_product/get_detail_product_bloc.dart';
import 'package:kiwi/kiwi.dart';
import 'package:auth/domain/usecase/login_user.dart';
import 'package:auth/domain/usecase/register_user.dart';

part 'injection.g.dart';

abstract class Injection {
  @Register.singleton(Dio, from: DioModule, name: 'dio')
  @Register.factory(ApiService, resolvers: {Dio: 'dio'}, name: 'api_service')
  //datasource
  @Register.factory(AuthRemoteDataSource,
      from: AuthRemoteDataSourceImpl,
      resolvers: {ApiService: 'api_service'},
      name: 'auth_remote')
  @Register.factory(ProductRemoteDataSource,
      from: ImplProductRemoteDataSource,
      resolvers: {ApiService: 'api_service'},
      name: 'product_remote')
  //repository
  @Register.factory(AuthRepository,
      from: AuthRepositoryImpl,
      resolvers: {AuthRemoteDataSource: 'auth_remote'},
      name: 'auth_repo')
  @Register.factory(ProductRepository,
      from: ProductRepositoryImpl,
      resolvers: {ProductRemoteDataSource: 'product_remote'},
      name: 'product_repo')
  //usecase
  @Register.singleton(LoginUser,
      resolvers: {AuthRepository: 'auth_repo'}, name: 'login_user')
  @Register.singleton(RegisterUSer,
      resolvers: {AuthRepository: 'auth_repo'}, name: 'register_user')
  @Register.singleton(GetAllProductsHome,
      resolvers: {ProductRepository: 'product_repo'},
      name: 'get_all_products_home')
  @Register.singleton(GetDetailProduct,
      resolvers: {ProductRepository: 'product_repo'},
      name: 'get_detail_product')
  //bloc
  @Register.factory(LoginBloc, resolvers: {LoginUser: 'login_user'})
  @Register.factory(RegisterBloc, resolvers: {RegisterUSer: 'register_user'})
  @Register.factory(GetAllProductHomeBloc,
      resolvers: {GetAllProductsHome: 'get_all_products_home'})
  @Register.factory(GetDetailProductBloc,
      resolvers: {GetDetailProduct: 'get_detail_product'})
  void configure();
}

class AppModule {
  static void setup() {
    var injection = _$Injection();
    injection.configure();
  }
}
