part of 'get_all_product_home_bloc.dart';

@freezed
class GetAllProductHomeState with _$GetAllProductHomeState {
  const factory GetAllProductHomeState.initial() = _Initial;
  const factory GetAllProductHomeState.loading() = _Loading;
  const factory GetAllProductHomeState.loaded(List<Product> products) = _Loaded;
  const factory GetAllProductHomeState.error(String message) = _Error;
}
