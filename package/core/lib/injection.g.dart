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
      ..registerFactory<AuthRepository>(
          (c) => AuthRepositoryImpl(c<AuthRemoteDataSource>('auth_remote')),
          name: 'auth_repo')
      ..registerSingleton((c) => LoginUser(c<AuthRepository>('auth_repo')),
          name: 'login_user')
      ..registerFactory((c) => LoginBloc(c<LoginUser>('login_user')));
  }
}
