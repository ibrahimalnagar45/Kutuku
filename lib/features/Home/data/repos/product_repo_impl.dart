import 'dart:developer';
import 'package:dio/dio.dart';
import 'package:kutuku/constants.dart';
import 'package:kutuku/core/services/api_service.dart';
import 'package:kutuku/core/utils/failure/failure.dart';
import 'package:kutuku/features/Home/data/repos/product_repo.dart';
import '../models/prodcut_model.dart';

class ProcutRepoImpl implements ProductRepo {
  final ApiService api;

  ProcutRepoImpl({required this.api});
  @override
  Future<List<ProductModel>> fetchAllProducts(
      {required String endpoint}) async {
    try {
      var data = await api.get(endPoint: endpoint);
      List<ProductModel> products = [];
      for (int i = 0; i <= data.length; i++) {
        products.add(
          ProductModel.fromJson(
            data['products'][i],
          ),
        );
      }

      return products;
    } on DioException catch (e) {
      // log(ServerFailure.fromDiorError(e).toString());
      throw (ServerFailure.fromDiorError(e));
    } catch (e) {
      log(e.toString());
      throw (
        ServerFailure(
          e.toString(),
        ),
      );
    }
  }

  @override
  Future<List<String>> fetchAllCategories({required String endpoint}) async {
    try {
      var data = await api.get(endPoint: endpoint);
      List<String> categories = [];
      for (int i = 0; i <= data.length; i++) {
        categories.add(data[i].toString());
      }
      return categories;
    } on DioException catch (e) {
      throw (ServerFailure.fromDiorError(e));
    } catch (e) {
      throw (ServerFailure(e.toString()));
    }
  }
}
