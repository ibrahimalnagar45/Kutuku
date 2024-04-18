import 'package:flutter/material.dart';
import 'package:kutuku/constants.dart';
import 'package:kutuku/features/Home/presentation/views/widgets/home_footer_buttons.dart';
import 'package:kutuku/features/Home/presentation/views/widgets/home_view_body.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      persistentFooterButtons: [PersistentFooterButtons()],
      // floatingActionButton: HomeViewPersistentFooterButtons(),
      // floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: kPrimaryPadding),
        child: HomeViewBody(),
      ),
    );
  }
}
