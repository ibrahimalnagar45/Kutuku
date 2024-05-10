import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kutuku/constants.dart';
import 'package:kutuku/core/models/prodcut_model.dart';
import 'package:kutuku/features/Home/data/repos/product_repo_impl.dart';
import 'product_state.dart';

class ProductCubit extends Cubit<ProductState> {
  ProductCubit(this.procutRepoImpl) : super(ProductsInitial());
  final ProcutRepoImpl procutRepoImpl;
  fetchAllProducts({String? category}) async {
    try {
      emit(ProductsLoading());
      var products = await procutRepoImpl.fetchAllProducts(endpoint: baseurl
          // endpoint: (category == null || category == '')
          //     ? baseurl
          //     : '$baseurl/category/$category',
          );

      emit(ProductsSuccess(products: products));
    } on DioException catch (e) {
      emit(
        ProductsFaluire(
          errorMessage: e.toString(),
        ),
      );
    } catch (e) {
      emit(
        ProductsFaluire(
          errorMessage: e.toString(),
        ),
      );
    }
  }

  List<String>? _categoris;

  fetchAllcategories() async {
    try {
      emit(ProductsLoading());
      List<String> categories = await procutRepoImpl.fetchAllCategories(
          endpoint: '$baseurl/categories');
      _categoris = categories;

      emit(
        CategorySuccess(categoris: categories),
      );
    } catch (e) {
      emit(
        ProductsFaluire(
          errorMessage: e.toString(),
        ),
      );
    }
  }

  ProductModel? _productModel;
  fetchProduct() async {
    try {
      emit(ProductsLoading());
      var product = await procutRepoImpl.fetchProduct(endpoint: '$baseurl/2');
      log(' the product             $product');
      _productModel = product;
      emit(ProductSuccess(productModel: product));
    } catch (e) {
      emit(
        ProductsFaluire(
          errorMessage: e.toString(),
        ),
      );
    }
  }
}
