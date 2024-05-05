import 'package:kutuku/features/Home/data/models/prodcut_model.dart';

sealed class ProductState {}

final class ProductInitial extends ProductState {}

final class ProductLoading extends ProductState {}

final class ProductSuccess extends ProductState {
  final List<ProductModel> products;

  ProductSuccess({required this.products});
}

final class ProductFaluire extends ProductState {
  final String errorMessage;

  ProductFaluire({required this.errorMessage});
}

final class CategoryLoading extends ProductState {}

final class CategorySuccess extends ProductState {
  final List<String> categoris;

  CategorySuccess({required this.categoris});
}

final class CategoryFaluire extends ProductState {
  final String errorMessage;

  CategoryFaluire({required this.errorMessage});
}
