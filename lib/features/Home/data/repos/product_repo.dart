import '../../../../core/models/prodcut_model.dart';

abstract class ProductRepo {
  Future<List<ProductModel>> fetchAllProducts({required String endpoint});
  Future<List<String>> fetchAllCategories({required String endpoint});
  Future<ProductModel> fetchProduct({required String endpoint});


}
