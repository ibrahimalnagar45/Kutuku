import 'package:dio/dio.dart';

import '../../features/Home/data/models/prodcut_model.dart';

class ApiService {
  final Dio dio;
  ProductModel? procutModel;
  List<ProductModel> procucts = [];

  ApiService({required this.dio});
  Future<Map<String, dynamic>> get({required String endPoint}) async {
    Response data = await dio.get(endPoint);
    return data.data;
  }
}
