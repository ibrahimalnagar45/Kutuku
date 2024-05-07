class ProductModel {
  String? title;
  String? image;
  String? category;
  num? price;
  String? description;
  int? id;
  ProductModel({
    required this.description,
    required this.title,
    required this.category,
    required this.image,
    required this.price,
    required this.id,
  });

  ProductModel.fromJson(Map<String, dynamic> json) {
    title = json['title'];
    image = json['image'];
    category = json['category'];
    price = json['price'];
    description = json['description'];
    id = json['id'];
  }
}
