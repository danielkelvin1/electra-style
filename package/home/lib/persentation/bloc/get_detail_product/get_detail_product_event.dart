part of 'get_detail_product_bloc.dart';

@freezed
class GetDetailProductEvent with _$GetDetailProductEvent {
  const factory GetDetailProductEvent.getDetailProduct(int id) =
      _GetDetailProduct;
}
