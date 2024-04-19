import 'package:flutter/material.dart';
import 'package:kutuku/constants.dart';
import 'package:kutuku/features/settings/presentation/views/widgets/setting_view_body.dart';
import 'package:kutuku/features/settings/presentation/views/widgets/sttings_views_app_bar.dart';

class SettingView extends StatelessWidget {
  const SettingView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const SettingViewsAppBar(title: 'Setting'),
      ),
      body: const Padding(
        padding: EdgeInsets.all(kPrimaryPadding),
        child: SettingsViewBody(),
      ),
    );
  }
}
