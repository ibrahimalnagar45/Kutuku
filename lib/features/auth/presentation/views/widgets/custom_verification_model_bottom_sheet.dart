import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:kutuku/core/utils/app_routes.dart';
import 'package:kutuku/core/utils/widgets/custom_button.dart';
import 'package:kutuku/features/auth/presentation/views/widgets/custom_check_icon.dart';
import '../../../../../core/utils/styles.dart';

class CustomVerificationBottomModelSheet extends StatelessWidget {
  const CustomVerificationBottomModelSheet({super.key});
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(
          height: 50,
        ),
        CustomCheckIcon(
          color: Colors.green,
          icon: Center(
            child: Image.asset(
              'assets/images/Ícones_para_todos_os_tipos_de_design___Freepik-removebg-preview.png',
              height: 80,
              color: Colors.white,
            ),
          ),
        ),
        const SizedBox(
          height: 20,
        ),
        Text(
          'Register Success',
          style: Styles.titleStyle.copyWith(fontSize: 25),
        ),
        const Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Congrationulations! your acount already created. ',
                style: Styles.desStyle),
            Text(
              'Please Login to get amazing experience.',
              style: Styles.desStyle,
            )
          ],
        ),
        const Spacer(),
        CustomButton(
          text: 'Go to Home',
          onPressed: () {
            GoRouter.of(context).pop();
            GoRouter.of(context).push(AppRoutes.kLoginView);
          },
        ),
        const SizedBox(
          height: 30,
        ),
      ],
    );
  }
}
