import 'package:flutter/material.dart';
import 'package:kutuku/constants.dart';
import 'package:kutuku/core/utils/widgets/custom_button.dart';
import 'package:kutuku/features/auth/presentation/views/widgets/create_new_password_sheet.dart';
import 'package:kutuku/features/auth/presentation/views/widgets/input_section.dart';
import 'package:kutuku/features/auth/presentation/views/widgets/view_title.dart';

class ForgetPasswordSheet extends StatefulWidget {
  const ForgetPasswordSheet({super.key});

  @override
  State<ForgetPasswordSheet> createState() => _ForgetPasswordSheetState();
}

class _ForgetPasswordSheetState extends State<ForgetPasswordSheet> {
  GlobalKey<FormState> globalKey = GlobalKey();

  AutovalidateMode autovalidateMode = AutovalidateMode.disabled;

  String? emial;

  @override
  Widget build(BuildContext context) {
    return Form(
      key: globalKey,
      autovalidateMode: AutovalidateMode.onUserInteraction,
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
                title: 'Forget Password ',
                subTitle: 'Enter you  email or phone number ',
              ),
              const SizedBox(
                height: 40,
              ),
              InputSection(
                passowrdField: true,
                onSaved: (data) {
                  emial = data;
                },
                validator: (data) {
                  if (data!.isEmpty || data == "") {
                    return "required feild";
                  }
                  String pattern =
                      r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$';
                  RegExp regex = RegExp(pattern);
                  if (!regex.hasMatch(data)) {
                    return 'Enter Valid Email';
                  } else {
                    return null;
                  }
                },
                title: 'Email or Phone Numeber',
                hintText: 'enter you email or phone',
                prefixIicon: const Icon(Icons.email_outlined),
              ),
              const Spacer(
                flex: 2,
              ),
              CustomButton(
                text: 'Send Code ',
                onPressed: () {
                  globalKey.currentState!.save();
                  if (globalKey.currentState!.validate()) {
                    setState(() {
                      autovalidateMode = AutovalidateMode.always;
                    });
                    Navigator.pop(context);
                    showModalBottomSheet(
                      isScrollControlled: true,
                      context: context,
                      builder: (context) => const CreateNewPasswordSheet(),
                    );
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
