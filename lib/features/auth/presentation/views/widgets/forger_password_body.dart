import 'package:flutter/material.dart';

import '../login_view.dart';
import 'custom_text_form_field.dart'; 
class ForgetPasswordViewBody extends StatefulWidget {
  const ForgetPasswordViewBody({super.key});

  @override
  State<ForgetPasswordViewBody> createState() => _ForgetPasswordViewBodyState();
}

class _ForgetPasswordViewBodyState extends State<ForgetPasswordViewBody> {
  GlobalKey<FormState> globalFormKey = GlobalKey();

  String? email;

  @override
  Widget build(BuildContext context) {
    return Form(
      key: globalFormKey,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text(
            'Forgot Password',
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.bold,
              fontSize: 30,
            ),
          ),
          const SizedBox(
            height: 70,
          ),
          const CustomTextFormField(
            hintText: 'Enter Your Email',
          ),
          const SizedBox(
            height: 20,
          ),
          Container(
            height: 65,
            width: double.infinity,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
            ),
            child: IconButton(
              onPressed: () {},
              icon: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  color: const Color.fromARGB(255, 104, 59, 202),
                ),
                child: const Center(
                  child: Text(
                    'Reset',
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 20),
                  ),
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 100,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                'Remember Passwrod?',
              ),
              SizedBox(
                child: InkWell(
                  onTap: () {
                    Navigator.of(context)
                        .push(MaterialPageRoute(builder: (context) {
                      return const StoreLoginView();
                    },),);

                  },
                  child: const Text(
                    ' Sign In ',
                    style: TextStyle(
                      fontSize: 20,
                      color: Color.fromARGB(255, 67, 29, 148),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
