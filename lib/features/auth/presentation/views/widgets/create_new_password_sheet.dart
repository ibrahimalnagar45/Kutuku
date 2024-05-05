import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:kutuku/constants.dart';
import 'package:kutuku/core/utils/widgets/custom_button.dart';
import 'package:kutuku/features/auth/presentation/views/widgets/input_section.dart';
import 'package:kutuku/features/auth/presentation/views/widgets/view_title.dart';

class CreateNewPasswordSheet extends StatefulWidget {
  const CreateNewPasswordSheet({super.key});

  @override
  State<CreateNewPasswordSheet> createState() => _CreateNewPasswordSheetState();
}

class _CreateNewPasswordSheetState extends State<CreateNewPasswordSheet> {
  GlobalKey<FormState> globalKey = GlobalKey();

  AutovalidateMode autovalidateMode = AutovalidateMode.disabled;

  String? newPassword1, newPassword2;

  @override
  Widget build(BuildContext context) {
    return Form(
      key: globalKey,
      autovalidateMode: autovalidateMode,
      child: Padding(
        padding: EdgeInsets.only(
            right: 20.0,
            left: 20,
            top: 20,
            bottom: MediaQuery.of(context).viewInsets.bottom),
        child: SizedBox(
          height: 400,
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
                title: 'Create New Password ',
                subTitle: 'Enter your new password',
              ),
              const SizedBox(
                height: 40,
              ),
              InputSection(
                passowrdField: true,
                isObscure: true,
                onSaved: (data) {
                  newPassword1 = data;
                },
                validator: (data) {
                  if (data!.isEmpty) {
                    return "required feild";
                  } else if (data.length < 8) {
                    return "the password must be more than 8 letters ";
                  } else if (!data.contains('@') &&
                      !data.contains('*') &&
                      !data.contains('_') &&
                      !data.contains('#') &&
                      !data.contains(r'$')) {
                    return "weak password the password must contain _ or special sing as # or * ";
                  } else {
                    return null;
                  }
                },
                title: 'New Password',
                hintText: 'enter New Password',
                prefixIicon: const Icon(Icons.password),
                suffixicon: Icons.remove_red_eye,
              ),
              InputSection(
                passowrdField: true,
                isObscure: true,
                onSaved: (data) {
                  newPassword2 = data;
                },
                validator: (data) {
                  if (data!.isEmpty) {
                    return "required feild";
                  } else if (newPassword1 != newPassword2) {
                    return 'the password is wrong';
                  } else if (data.length < 8) {
                    return "the password must be more than 8 letters ";
                  } else if (!data.contains('@') &&
                      !data.contains('*') &&
                      !data.contains('_') &&
                      !data.contains('#') &&
                      !data.contains(r'$')) {
                    return "weak password the password must contain _ or special sing as # or * ";
                  } else {
                    return null;
                  }
                },
                title: 'New Password',
                hintText: 'Check the Password',
                prefixIicon: const Icon(Icons.password_outlined),
                suffixicon: Icons.remove_red_eye,
                suffixIconOnPressed: () {},
              ),
              const Spacer(
                flex: 2,
              ),
              CustomButton(
                text: 'Change Password',
                onPressed: () {
                  globalKey.currentState!.save();
                  if (globalKey.currentState!.validate()) {
                    setState(() {
                      autovalidateMode = AutovalidateMode.always;
                    });

                    log('Done');
                  }
                },
              ),
              const Spacer(
                flex: 1,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
