import 'dart:developer';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kutuku/constants.dart';
import 'package:kutuku/features/Home/data/repos/product_repo_impl.dart';
import 'product_state.dart';

class ProductCubit extends Cubit<ProductState> {
  ProductCubit(this.procutRepoImpl) : super(ProductInitial());
  final ProcutRepoImpl procutRepoImpl;
  fetchAllProducts() async {
    try {
      emit(ProductLoading());
      var products = await procutRepoImpl.fetchAllProducts(endpoint: baseUrl);
      emit(ProductSuccess(products: products));
    } catch (e) {
      emit(
        ProductFaluire(
          errorMessage: e.toString(),
        ),
      );
    }
  }

  List<String>? _categoris;
  fetchAllcategories() async {
    try {
      emit(CategoryLoading());
      List<String> categories = await procutRepoImpl.fetchAllCategories(
          endpoint: '$baseUrl/categories');
      _categoris = categories;

      emit(
        CategorySuccess(categoris: categories),
      );
    } catch (e) {
      emit(
        CategoryFaluire(
          errorMessage: e.toString(),
        ),
      );
    }
  }

  // fetchCategoryImages() async {
  //   if (_categoris!.isNotEmpty) {
  //     try {
  //       emit(CategoryLoading());
  //       for (var item in _categoris!) {
  //         var products = await procutRepoImpl.fetchProduct(
  //             endpoint: "$baseUrl/category/$item");

  //         emit(CategorySuccess(products: products));
  //       }
  //     } catch (e) {
  //       emit(CategoryFaluire(errorMessage: e.toString()));
  //     }
  //   }
  // }
}
