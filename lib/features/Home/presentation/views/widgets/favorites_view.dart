import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:kutuku/features/my_cart/presentation/views/widgets/custom_app_bar.dart';
import 'package:kutuku/features/my_cart/presentation/views/widgets/build_items_list.dart';

import '../../../../../constants.dart';
import '../../../../../core/models/prodcut_model.dart';
import 'home_footer_buttons.dart';

class FavoritesView extends StatefulWidget {
  const FavoritesView({super.key});

  @override
  State<FavoritesView> createState() => _FavoritesViewState();
}

class _FavoritesViewState extends State<FavoritesView> {
  List<ProductModel> products = [];
  var box = Hive.box<ProductModel>('favourites');
  @override
  void initState() {
    products = fetchAllFavorites(box);
    log(products.toString());
     super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: customAppBar(
        context,
        title: 'Favorites',
        icon: Icons.favorite,
        leadingOnPressed: () {
          Navigator.pop(context);
        },
      ),
      persistentFooterButtons: const [PersistentFooterButtons()],
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: kPrimaryPadding),
        child: SafeArea(
          child: BuildItemsList(
            products: products,
          ),
        ),
      ),
    );
  }
}

fetchAllFavorites(dynamic box) {
  return box.values.toList();
}
