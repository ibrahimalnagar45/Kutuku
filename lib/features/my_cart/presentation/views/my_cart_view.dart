import 'package:flutter/material.dart';
import 'package:kutuku/constants.dart';
import 'package:kutuku/features/Home/presentation/views/widgets/home_footer_buttons.dart';
import 'package:kutuku/features/my_cart/presentation/views/widgets/my_cart_view_body.dart';

import 'widgets/custom_app_bar.dart';

class MyCartView extends StatelessWidget {
  const MyCartView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: customAppBar(
        context,
        title: 'My Cart',
        icon: Icons.shopping_bag_outlined,
        leadingOnPressed: () => Navigator.pop(context),
      ),
      persistentFooterButtons: const [
        PersistentFooterButtons(),
      ],
      body: const Padding(
        padding: EdgeInsets.all(kPrimaryPadding),
        child: MyCartViewBody(),
      ),
    );
  }
}
