import 'package:core/domain/entities/product.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:home/domain/usecase/get_all_products_home.dart';
part 'get_all_product_home_event.dart';
part 'get_all_product_home_state.dart';
part 'get_all_product_home_bloc.freezed.dart';

class GetAllProductHomeBloc
    extends Bloc<GetAllProductHomeEvent, GetAllProductHomeState> {
  final GetAllProductsHome _getAllProductsHome;

  GetAllProductHomeBloc(this._getAllProductsHome) : super(const _Initial()) {
    on<_GetProductsAll>((event, emit) async {
      emit(const _Loading());
      final result = await _getAllProductsHome.execute();

      result.fold(
        (error) => emit(_Error(error.message)),
        (products) => emit(
          _Loaded(products),
        ),
      );
    });
  }
}
