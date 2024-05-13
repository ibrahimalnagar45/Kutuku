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
  @HiveField(6)
  List<dynamic>? images;
  ProductModel(
      {required this.description,
      required this.title,
      required this.category,
      required this.image,
      required this.price,
      required this.id,
      required this.images});

  factory ProductModel.fromJson(Map<String, dynamic> json) {
    return ProductModel(
      title: json['title'],
      image: json['thumbnail'],
      category: json['category'],
      price: json['price'],
      description: json['description'],
      id: json['id'],
      images: json['images'],
    );
  }
}
