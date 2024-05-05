 

import 'package:flutter/material.dart';
import 'package:kutuku/features/my_cart/presentation/views/widgets/custom_app_bar.dart';
import 'package:kutuku/features/my_cart/presentation/views/widgets/my_cart_item_list.dart';

import '../../../../../constants.dart';
import 'home_footer_buttons.dart';

class FavoritesView extends StatelessWidget {
  const FavoritesView({super.key});

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
      body: const Padding(
        padding: EdgeInsets.symmetric(horizontal: kPrimaryPadding),
        child: SafeArea(
          child: MyCartItemsList(),
        ),
      ),
    );
  }
}
