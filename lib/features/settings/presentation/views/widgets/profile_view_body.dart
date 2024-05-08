import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:kutuku/core/utils/styles.dart';
import 'package:kutuku/core/utils/widgets/custom_button.dart';
import 'package:kutuku/core/utils/widgets/icon_text_button.dart';
import 'package:kutuku/features/auth/presentation/views/widgets/input_section.dart';

class ProfileViewBody extends StatelessWidget {
  const ProfileViewBody({super.key, this.image, this.userName, this.emial});
  final String? image;
  final String? userName, emial;

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        const Divider(
          thickness: .5,
        ),
        CircleAvatar(
          radius: 50,
          foregroundImage: image == null
              ? const AssetImage(
                  'assets/images/no_image.jpg',
                )
              : AssetImage(
                  image!,
                ),
        ),
        SizedBox(
          height: MediaQuery.of(context).size.height * .02,
        ),
        InputSection(
          suffixicon: Icons.edit,
          passowrdField: false,
          title: 'Username',
          hintText: userName ?? 'None',
          prefixIicon: const Icon(Icons.person),
        ),
        const SizedBox(height: 15),
        InputSection(
          suffixicon: Icons.edit,
          passowrdField: false,
          title: 'Email',
          hintText: emial ?? 'None',
          prefixIicon: const Icon(Icons.email),
        ),
        const SizedBox(height: 15),
        const Align(
          alignment: Alignment.centerLeft,
          child: Text(
            'Account Linked With',
            style: Styles.titleStyle,
          ),
        ),
        SizedBox(
          height: MediaQuery.of(context).size.height * .02,
        ),
        const IconTextButton(
            colored: false,
            prefixIcon: 'assets/icons/googleIcon.jpeg',
            text: 'Google'),
        SizedBox(
          height: MediaQuery.of(context).size.height * .1,
        ),
        CustomButton(
          text: 'Save Changes',
          onPressed: () {
            GoRouter.of(context).pop();
          },
        ),
      ],
    );
  }
}
