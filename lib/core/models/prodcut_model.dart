import 'package:hive_flutter/hive_flutter.dart';
part 'prodcut_model.g.dart';

@HiveType(typeId: 0)
class ProductModel extends HiveObject {
  @HiveField(0)
  String? title;
  @HiveField(1)
  String? image;
  @HiveField(2)
  String? category;
  @HiveField(3)
  num? price;
  @HiveField(4)
  String? description;
  @HiveField(5)
  int? id;
  ProductModel({
    required this.description,
    required this.title,
    required this.category,
    required this.image,
    required this.price,
    required this.id,
  });

  ProductModel.fromJson( dynamic json) {
    title = json['title'];
    image = json['image'][0];
    category = json['category'];
    price = json['price'];
    description = json['description'];
    id = json['id'];
  }
}
