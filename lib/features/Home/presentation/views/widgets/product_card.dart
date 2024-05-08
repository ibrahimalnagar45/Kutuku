import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:kutuku/constants.dart';
import 'package:kutuku/core/utils/styles.dart';
import 'package:fancy_shimmer_image/fancy_shimmer_image.dart';
import 'package:kutuku/features/Home/presentation/views/detials_view.dart';
import '../../../../../core/utils/app_routes.dart';
import '../../../../../core/models/prodcut_model.dart';
import 'custom_favorite_icon.dart';

class ProductCard extends StatefulWidget {
  const ProductCard({super.key, required this.productModel});
  final ProductModel productModel;

  @override
  State<ProductCard> createState() => _ProductCardState();
}

class _ProductCardState extends State<ProductCard> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context).push(
          MaterialPageRoute(
            builder: (context) {
              return DetailsView(
                product: widget.productModel,
              );
            },
          ),
        );
      },
      child: SizedBox(
        width: MediaQuery.of(context).size.width * .4,
        child: Column(mainAxisSize: MainAxisSize.min, children: [
          Padding(
            padding: const EdgeInsets.only(right: 16.0),
            child: Stack(
              children: [
                FancyShimmerImage(
                  imageUrl: widget.productModel.image ?? networkImageError,
                  errorWidget: Image.asset('assets/images/no_image.jpg'),
                ),
                Positioned(
                  right: 10,
                  top: 15,
                  child: CustomFavoriteIcon(
                    productModel: widget.productModel,
                  ),
                ),
              ],
            ),
          ),
          Text(
            widget.productModel.title!,
            style: Styles.textStyle15,
          ),
          const Text(
            'Ibrahadenough',
            style: Styles.desStyle,
          ),
          Text(
            widget.productModel.price.toString(),
            style: Styles.textStyle15,
          ),
        ]),
      ),
    );
  }
}
