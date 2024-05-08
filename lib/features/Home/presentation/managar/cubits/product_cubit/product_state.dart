 
import '../../../../../../core/models/prodcut_model.dart';

sealed class ProductState {}

final class ProductsInitial extends ProductState {}

final class ProductsLoading extends ProductState {}

final class ProductsSuccess extends ProductState {
  final List<ProductModel> products;

  ProductsSuccess({required this.products});
}

final class ProductsFaluire extends ProductState {
  final String errorMessage;

  ProductsFaluire({required this.errorMessage});
}

final class CategorySuccess extends ProductState {
  final List<String> categoris;
// List<ProductModel>? products ;
  CategorySuccess({
    required this.categoris,
  });
}

final class ProductSuccess extends ProductState {
  final ProductModel productModel;
// List<ProductModel>? products ;
  ProductSuccess({
    required this.productModel,
  });
}
