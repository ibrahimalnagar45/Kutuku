import 'dart:developer';
import 'package:dio/dio.dart';
import 'package:kutuku/core/services/api_service.dart';
import 'package:kutuku/core/utils/failure/failure.dart';
import 'package:kutuku/features/Home/data/repos/product_repo.dart';
import '../../../../core/models/prodcut_model.dart';

class ProcutRepoImpl implements ProductRepo {
  final ApiService api;

  ProcutRepoImpl({required this.api});
  @override
  Future<List<ProductModel>> fetchAllProducts(
      {required String endpoint}) async {
    try {
      var data = await api.get(endPoint: endpoint);
      // log('data from the reop : $data');
      List<ProductModel> products = [];
      for (var item in data) {
        products.add(
          ProductModel.fromJson(
            item,
          ),
        );
      }

      return products;
    } on DioException catch (e) {
      log(ServerFailure.fromDiorError(e).toString());
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

      for (int i = 0; i <= data.length - 1; i++) {
        categories.add(data[i]);
      }
      return categories;
    } on DioException catch (e) {
      log(ServerFailure.fromDiorError(e).toString());
      throw (ServerFailure.fromDiorError(e));
    } catch (e) {
      log("message:${e.toString()}");
      throw 'something went wrong ${e.toString()}';
    }
  }

  @override
  Future<ProductModel> fetchProduct({required String endpoint}) async {
    try {
      var data = await api.get(endPoint: endpoint);

      ProductModel productModel;

      productModel = ProductModel.fromJson(data);

      return productModel;
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
}
