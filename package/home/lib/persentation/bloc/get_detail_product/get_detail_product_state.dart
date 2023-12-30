part of 'get_detail_product_bloc.dart';

@freezed
class GetDetailProductState with _$GetDetailProductState {
  const factory GetDetailProductState.initial() = _Initial;
  const factory GetDetailProductState.loading() = _Loading;
  const factory GetDetailProductState.loaded(Product product) = _Loaded;
  const factory GetDetailProductState.error(String message) = _Error;
}
