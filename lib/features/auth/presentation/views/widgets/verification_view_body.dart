import 'package:flutter/material.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';
import 'package:flutter_svg/svg.dart';
import 'package:kutuku/constants.dart';
import 'package:kutuku/core/utils/styles.dart';
import '../../../../../core/utils/widgets/custom_button.dart';
import 'custom_check_icon.dart';
import 'custom_verification_model_bottom_sheet.dart';

class VerificationViewBody extends StatelessWidget {
  const VerificationViewBody({super.key});

  // int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return ListView(
      // crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        const SizedBox(
          height: 20,
        ),
        CustomCheckIcon(
          icon: Center(
            child: SvgPicture.asset(
              'assets/icons/envelope-circle-check-solid.svg',
              height: 35,
              colorFilter:
                  const ColorFilter.mode(Colors.white, BlendMode.srcIn),
            ),
          ),
        ),
        const SizedBox(
          height: 30,
        ),
        Center(
          child: Text(
            'Verification Code',
            style: Styles.titleStyle.copyWith(fontSize: 25),
          ),
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
        OtpTextField(
          numberOfFields: 4,
          borderColor: kSecondaryColor,
          fieldHeight: 100,
          fieldWidth: 65,

          borderWidth: 1.5,
          margin: const EdgeInsets.only(right: 4),
          borderRadius: BorderRadius.circular(15),

          cursorColor: kPrimaryColor.withOpacity(.5),
          //set to true to show as box or false to show as dash
          showFieldAsBox: true,

          onSubmit: (String verificationCode) {
            showModalBottomSheet(
                context: context,
                builder: (context) {
                  return const CustomVerificationBottomModelSheet();
                });
          }, // end onSubmit
        ),
        const SizedBox(
          height: 30,
        ),
        CustomButton(
          text: 'Submit',
          onPressed: () {
            showModalBottomSheet(
                context: context,
                builder: (context) {
                  return const CustomVerificationBottomModelSheet();
                });
          },
        ),
        const SizedBox(
          height: 30,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'Didn\'t recieve the code?',
              style: Styles.desStyle,
            ),
            Text(
              'Resend',
              style:
                  Styles.desStyle.copyWith(color: kPrimaryColor, fontSize: 18),
            ),
          ],
        )
      ],
    );
  }
}
