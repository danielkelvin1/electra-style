import 'package:core/domain/entities/product.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:home/domain/usecase/get_detail_product.dart';

part 'get_detail_product_event.dart';
part 'get_detail_product_state.dart';
part 'get_detail_product_bloc.freezed.dart';

class GetDetailProductBloc
    extends Bloc<GetDetailProductEvent, GetDetailProductState> {
  final GetDetailProduct _getDetailProduct;
  GetDetailProductBloc(this._getDetailProduct) : super(const _Initial()) {
    on<_GetDetailProduct>((event, emit) async {
      emit(const _Loading());
      final result = await _getDetailProduct.execute(event.id);
      result.fold(
        (error) => emit(
          _Error(error.message),
        ),
        (product) => emit(
          _Loaded(product),
        ),
      );
    });
  }
}
