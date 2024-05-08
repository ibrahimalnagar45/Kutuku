import 'package:fancy_shimmer_image/fancy_shimmer_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:go_router/go_router.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:kutuku/core/utils/app_routes.dart';
import 'package:kutuku/core/utils/styles.dart';
import 'package:kutuku/core/utils/widgets/icon_text_button.dart';
import 'package:kutuku/core/models/prodcut_model.dart';
import 'package:kutuku/features/Home/presentation/views/widgets/custom_favorite_icon.dart';
import 'package:kutuku/features/my_cart/presentation/views/widgets/custom_app_bar.dart';

import '../../../../../constants.dart';

class DetailsViewBody extends StatelessWidget {
  const DetailsViewBody({
    super.key,
    required this.product,
  });
  final ProductModel product;
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        customAppBar(
          context,
          leadingOnPressed: () => GoRouter.of(context).pop(),
          actionOnpressed: () =>
              GoRouter.of(context).push(AppRoutes.kMyCartView),
          title: 'Detail Product',
          icon: Icons.shopping_bag,
        ),
        FancyShimmerImage(
          boxFit: BoxFit.fill,
          imageUrl: product.image ?? networkImageError,
          errorWidget: Image.asset('assets/images/no_image.jpg'),
        ),
        Container(
          decoration: const BoxDecoration(
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(kPrimaryPadding),
              topRight: Radius.circular(kPrimaryPadding),
            ),
            color: Colors.white,
          ),
        ),
        Text(
          product.title!,
          style: Styles.titleStyle,
        ),
        Align(
          alignment: Alignment.centerRight,
          child: SizedBox(
            height: 35,
            child: CustomFavoriteIcon(
              productModel: product,
            ),
          ),
        ),
        const SizedBox(
          height: 20,
        ),
        Text(
          product.description!,
          style: Styles.desStyle,
        ),
        SizedBox(
          height: MediaQuery.of(context).size.height * .04,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          mainAxisSize: MainAxisSize.max,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              mainAxisSize: MainAxisSize.max,
              children: [
                const Text(
                  'Price',
                  style: Styles.desStyle,
                ),
                const SizedBox(
                  height: 12,
                ),
                Text(
                  " \$${product.price!}",
                  style: Styles.titleStyle,
                ),
              ],
            ),
            SizedBox(
              width: 250,
              height: 60,
              child: IconTextButton(
                onPressed: () {
                  var box = Hive.box<ProductModel>('myCart');
                  if (!box.containsKey(product.id)) {
                    box.put(product.id, product);
                  }
                },
                text: 'Add to Chart',
                colored: true,
                prefixIcon: 'assets/images/Shopping_bag.jpeg',
              ),
            ),
          ],
        ),
      ],
    );
  }
}
