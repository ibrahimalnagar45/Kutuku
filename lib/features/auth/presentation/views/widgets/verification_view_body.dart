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
  late List<FocusNode> focusNodes;
  late TextEditingController _controller;
  @override
  void initState() {
    focusNodes = List.generate(5, (index) => FocusNode());
    _controller = TextEditingController();
    super.initState();
  }

  void depose() {
    _controller.dispose();
    focusNodes.forEach((node) {
      node.dispose();
    });
  }

  @override
  Widget build(BuildContext context) {
    return ListView(
      // crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        const SizedBox(
          height: 20,
        ),
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
                        onsubmitted: (value) {
                          {
                            // Submit logic goes here
                            // For now, just move focus to the next field
                            if (_controller.text.length < 5) {
                              return; // Don't proceed if code length is less than 5
                            }
                            for (var i = 0; i < focusNodes.length; i++) {
                              if (!focusNodes[i].hasFocus &&
                                  i < focusNodes.length - 1) {
                                focusNodes[i + 1].requestFocus();
                                break;
                              }
                            }
                          }
                        },
                        focusNode: focusNodes[index],
                        // nextFocus: currentIndex == index
                        //     ? focusNodes[index + 1]
                        //     : null,
                        isFocused: currentIndex == index,
                      ),
                    ));
              }),
        ),
        const SizedBox(
          height: 30,
        ),
        CustomButton(
          text: 'Submit',
          onPressed: () {
            // Submit logic goes here
            // For now, just move focus to the next field
            if (_controller.text.length < 5) {
              return; // Don't proceed if code length is less than 5
            }
            for (var i = 0; i < focusNodes.length; i++) {
              if (!focusNodes[i].hasFocus && i < focusNodes.length - 1) {
                focusNodes[i + 1].requestFocus();
                break;
              }
            }
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
