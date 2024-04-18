import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:kutuku/constants.dart';
import 'package:kutuku/core/models/product_model.dart';

class ProductCard extends StatefulWidget {
  const ProductCard({super.key, required this.productModel});
  final ProductModel productModel;

  @override
  State<ProductCard> createState() => _ProductCardState();
}

class _ProductCardState extends State<ProductCard> {
  bool redFavoriteIcon = false;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        // GoRouter.of(context).push(AppRoutes.kONboarding);
      },
      child: Padding(
        padding: const EdgeInsets.only(right: 16.0),
        child: SizedBox(
          height: 200,
          // width: 50,
          child: AspectRatio(
            aspectRatio: .64 / .8,
            child: Stack(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(15),
                  child: Image.asset(
                    widget.productModel.image,
                    fit: BoxFit.cover,
                  ),
                ),
                Positioned(
                  right: 10,
                  top: 15,
                  child: CircleAvatar(
                    backgroundColor: Colors.grey.withOpacity(.8),
                    child: IconButton(
                      highlightColor: Colors.red.withOpacity(.4),
                      icon: Icon(
                        redFavoriteIcon
                            ? Icons.favorite
                            : Icons.favorite_border,
                        color: redFavoriteIcon ? Colors.red : Colors.white,
                      ),
                      onPressed: () {
                        redFavoriteIcon = !redFavoriteIcon;
                        setState(() {});
                      },
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
