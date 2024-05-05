import 'package:flutter/material.dart';
import 'package:kutuku/constants.dart';
import 'package:kutuku/features/my_cart/presentation/views/widgets/custom_app_bar.dart';
import 'package:kutuku/features/settings/presentation/views/widgets/setting_view_body.dart';

class SettingView extends StatelessWidget {
  const SettingView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: customAppBar(context, title: 'Settings', icon: Icons.settings,
          leadingOnPressed: () {
        Navigator.pop(context);
        Navigator.pop(context);
      }),
      body: const Padding(
        padding: EdgeInsets.all(kPrimaryPadding),
        child: SettingsViewBody(),
      ),
    );
  }
}
