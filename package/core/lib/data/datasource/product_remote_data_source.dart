import 'package:core/data/models/remote/product_model.dart';
import 'package:core/service/api_service.dart';

abstract class ProductRemoteDataSource {
  Future<List<ProductModel>> getAll();
  Future<ProductModel> getDetail(int id);
}

class ImplProductRemoteDataSource extends ProductRemoteDataSource {
  final ApiService apiService;

  ImplProductRemoteDataSource(this.apiService);

  @override
  Future<List<ProductModel>> getAll() {
    return apiService.getProduct();
  }

  @override
  Future<ProductModel> getDetail(int id) {
    return apiService.getDetailProduct(id);
  }
}
