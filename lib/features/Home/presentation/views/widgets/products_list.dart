import 'package:flutter/material.dart';

import '../../../data/models/prodcut_model.dart';
import 'product_card.dart';

class ProductsList extends StatelessWidget {
  const ProductsList({
    super.key,
    required this.productModel1,
    required this.productModel2,
  });
  final ProductModel productModel1, productModel2;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisSize: MainAxisSize.max,
      children: [
        ProductCard(
          productModel: productModel1,
        ),
        ProductCard(
          productModel: productModel2,
        ),
      ],
    );
  }
}
