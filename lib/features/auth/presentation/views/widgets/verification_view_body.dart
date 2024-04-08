import 'package:awesome_icons/awesome_icons.dart';
import 'package:flutter/material.dart';

import 'package:flutter_svg/svg.dart';
import 'package:kutuku/constants.dart';
import 'package:kutuku/core/utils/styles.dart';
import 'package:kutuku/features/auth/presentation/views/widgets/verification_code_bloc.dart';

import '../../../../../core/utils/widgets/custom_button.dart';

class VerificationViewBody extends StatefulWidget {
  const VerificationViewBody({super.key});

  @override
  State<VerificationViewBody> createState() => _VerificationViewBodyState();
}

class _VerificationViewBodyState extends State<VerificationViewBody> {
  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        CircleAvatar(
          minRadius: 75,
          backgroundColor: Colors.grey.withBlue(255).withOpacity(.2),
          child: CircleAvatar(
            minRadius: 55,
            backgroundColor: kPrimaryColor,
            child: Center(
              child: SvgPicture.asset(
                'assets/icons/envelope-circle-check-solid.svg',
                height: 35,
                colorFilter:
                    const ColorFilter.mode(Colors.white, BlendMode.srcIn),
              ),
            ),
          ),
        ),
        const SizedBox(
          height: 30,
        ),
        Text(
          'Verification Code',
          style: Styles.titleStyle.copyWith(fontSize: 25),
        ),
        const Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('we have sent the verification code', style: Styles.desStyle),
            Text(
              '+1 898 234 5678',
            )
          ],
        ),
        const SizedBox(
          height: 30,
        ),
        SizedBox(
          height: 80,
          child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: 5,
              itemBuilder: (context, index) {
                return GestureDetector(
                    onTap: () {
                      setState(() {
                        currentIndex = index;
                      });
                    },
                    child: Padding(
                      padding: const EdgeInsets.only(right: 4),
                      child: VerificationCodeBloc(
                        isFocused: currentIndex == index,
                      ),
                    ));
              }),
        ),
        const SizedBox(
          height: 30,
        ),
        const CustomButton(
          text: 'Submit',
        ),
        const SizedBox(
          height: 30,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text('Didn\'t recieve the code?'),
            Text(
              'Resend',
              style: Styles.desStyle.copyWith(color: kPrimaryColor),
            ),
            //  const   Icon(
            //       FontAwesomeIcons.chevronRight,
            //       size: 20,
            //     )
          ],
        )
      ],
    );
  }
}
