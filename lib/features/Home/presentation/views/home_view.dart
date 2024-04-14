import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:kutuku/constants.dart';
import 'package:kutuku/features/Home/presentation/views/widgets/adds_list_view.dart';
import 'package:kutuku/features/Home/presentation/views/widgets/home_appbar.dart';
import 'package:kutuku/features/Home/presentation/views/widgets/home_footer_buttons.dart';
import 'package:kutuku/features/Home/presentation/views/widgets/home_sections.dart';
import 'package:kutuku/features/Home/presentation/views/widgets/home_view_body.dart';
import 'package:kutuku/features/Home/presentation/views/widgets/product_card.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      persistentFooterButtons: [HomeViewPersistentFooterButtons()],
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: kPrimaryPadding),
        child: HomeViewBody(),
      ),
    );
  }
}
