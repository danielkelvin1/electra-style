// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'injection.dart';

// **************************************************************************
// KiwiInjectorGenerator
// **************************************************************************

class _$Injection extends Injection {
  @override
  void configure() {
    final KiwiContainer container = KiwiContainer();
    container
      ..registerSingleton<Dio>((c) => DioModule(), name: 'dio')
      ..registerFactory((c) => ApiService(c<Dio>('dio')), name: 'api_service')
      ..registerFactory<AuthRemoteDataSource>(
          (c) => AuthRemoteDataSourceImpl(c<ApiService>('api_service')),
          name: 'auth_remote')
      ..registerFactory<ProductRemoteDataSource>(
          (c) => ImplProductRemoteDataSource(c<ApiService>('api_service')),
          name: 'product_remote')
      ..registerFactory<AuthRepository>(
          (c) => AuthRepositoryImpl(c<AuthRemoteDataSource>('auth_remote')),
          name: 'auth_repo')
      ..registerFactory<ProductRepository>(
          (c) => ProductRepositoryImpl(
              c<ProductRemoteDataSource>('product_remote')),
          name: 'product_repo')
      ..registerSingleton((c) => LoginUser(c<AuthRepository>('auth_repo')),
          name: 'login_user')
      ..registerSingleton((c) => RegisterUSer(c<AuthRepository>('auth_repo')),
          name: 'register_user')
      ..registerSingleton(
          (c) => GetAllProductsHome(c<ProductRepository>('product_repo')),
          name: 'get_all_products_home')
      ..registerSingleton(
          (c) => GetDetailProduct(c<ProductRepository>('product_repo')),
          name: 'get_detail_product')
      ..registerFactory((c) => LoginBloc(c<LoginUser>('login_user')))
      ..registerFactory((c) => RegisterBloc(c<RegisterUSer>('register_user')))
      ..registerFactory((c) =>
          GetAllProductHomeBloc(c<GetAllProductsHome>('get_all_products_home')))
      ..registerFactory((c) =>
          GetDetailProductBloc(c<GetDetailProduct>('get_detail_product')));
  }
}
