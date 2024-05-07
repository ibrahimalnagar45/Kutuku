import 'dart:developer';

import 'package:dio/dio.dart';

import '../../features/Home/data/models/prodcut_model.dart';

class ApiService {
  final Dio dio;
  ProductModel? procutModel;
  List<ProductModel> procucts = [];

  ApiService({required this.dio});
  Future<dynamic> get({required String endPoint}) async {
    Response data = await dio.get(endPoint);
    // log(" data :::  ${data.data}");
    return data.data;
  }
}
