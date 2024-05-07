import 'package:flutter/material.dart';
import 'package:kutuku/constants.dart';
import 'package:kutuku/features/Home/presentation/views/widgets/detials_view_body.dart';

import '../../data/models/prodcut_model.dart';

class DetailsView extends StatelessWidget {
  const DetailsView({
    super.key,
    this.product,
  });
  final ProductModel? product;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: kPrimaryPadding),
        child: DetailsViewBody(
          product: product ??
              ProductModel(
                  description: 'description',
                  title: 'title',
                  category: 'category',
                  image: 'assets/images/no_image.jpg',
                  price: 3,
                  id: 2),
        ),
      ),
    );
  }
}
