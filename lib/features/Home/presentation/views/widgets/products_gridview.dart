import 'package:flutter/material.dart';
import 'package:kutuku/constants.dart';
import 'package:kutuku/features/Home/presentation/views/widgets/product_card.dart';

class ProductsGridView extends StatelessWidget {
  const ProductsGridView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: testProducts.length,
        itemBuilder: (context, index) {
          return Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              ProductCard(
                productModel: testProducts[index],
              ),
              ProductCard(
                productModel: testProducts[index],
              ),
            ],
          );
        });
  }
}
