import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:kutuku/features/Home/presentation/views/widgets/favorites_view.dart';
import 'package:kutuku/features/my_cart/presentation/views/widgets/build_items_list.dart';

import '../../../../../core/models/prodcut_model.dart';
import 'custom_app_bar.dart';

class MyCartViewBody extends StatefulWidget {
  const MyCartViewBody({super.key});

  @override
  State<MyCartViewBody> createState() => _MyCartViewBodyState();
}

class _MyCartViewBodyState extends State<MyCartViewBody> {
  var box = Hive.box<ProductModel>('myCart');
  List<ProductModel> products = [];
  @override
  void initState() {
    products = fetchAllFavorites(box);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        customAppBar(
          context,
          title: 'My Cart',
          icon: Icons.shopping_bag_outlined,
          leadingOnPressed: () => Navigator.pop(context),
        ),
          Expanded(
            child: BuildItemsList(
          products: products,
        )),
      ],
    );
  }
}
