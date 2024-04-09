import 'package:flutter/material.dart';
import 'package:kutuku/constants.dart';
import 'package:kutuku/core/utils/widgets/custom_button.dart';
import 'package:kutuku/features/auth/presentation/views/widgets/input_section.dart';
import 'package:kutuku/features/auth/presentation/views/widgets/view_title.dart';

class ForgetPasswordSheet extends StatelessWidget {
  const ForgetPasswordSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
          right: 20.0,
          left: 20,
          top: 20,
          bottom: MediaQuery.of(context).viewInsets.bottom),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                height: 5,
                width: 60,
                decoration: BoxDecoration(
                    color: kSecondaryColor,
                    borderRadius: BorderRadius.circular(10)),
              ),
            ],
          ),
          const SizedBox(
            height: 20,
          ),
          const ViewTitle(
            title: 'Forget Password ',
            subTitle: 'Enter you  email or phone number ',
          ),
          const SizedBox(
            height: 40,
          ),
          InputSection(
            title: 'Email or Phone Numeber',
            hintText: 'enter you email or phone',
            prefixIicon: Icon(Icons.email_outlined),
          ),
          const Spacer(
            flex: 2,
          ),
          CustomButton(text: 'Send Code '),
          const Spacer(
            flex: 1,
          ),
        ],
      ),
    );
  }
}
