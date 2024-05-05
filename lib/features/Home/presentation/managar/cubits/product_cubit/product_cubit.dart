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

  fetchAllcategories( ) async {
    try {
      emit(CategoryLoading());
      var categories =
          await procutRepoImpl.fetchAllCategories(endpoint: '$baseUrl/categories');
      emit(CategorySuccess(categoris: categories));
    } catch (e) {
      emit(
        ProductFaluire(
          errorMessage: e.toString(),
        ),
      );
    }
  }
}
