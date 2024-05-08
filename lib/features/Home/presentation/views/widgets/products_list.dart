import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

import '../../../../../core/models/prodcut_model.dart';
import 'product_card.dart';

class ProductsList extends StatelessWidget {
  const ProductsList({
    super.key,
    required this.products,
  });
  final List<ProductModel> products;

  @override
  Widget build(BuildContext context) {
    return SliverList(
      delegate: SliverChildBuilderDelegate(
        childCount: 1,
        (context, index) => SizedBox(
          height: MediaQuery.of(context).size.height * .885,
          child: MasonryGridView.count(
              itemCount: products.length,
              crossAxisCount: 2,
              mainAxisSpacing: 1,
              crossAxisSpacing: 1,
              itemBuilder: (context, index) {
                return ProductCard(productModel: products[index]);
              }),
        ),
      ),
    );
  }
}
