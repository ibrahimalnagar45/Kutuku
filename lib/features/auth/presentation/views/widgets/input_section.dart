import 'package:flutter/material.dart';
import 'package:kutuku/core/utils/styles.dart';
import 'package:kutuku/features/auth/presentation/views/widgets/custom_text_form_field.dart';

class InputSection extends StatelessWidget {
  const InputSection({
    super.key,
    required this.title,
    required this.hintText,
    this.validator,
    required this.prefixIicon,
    this.isObscure = false,
    this.withSuffixicon = false,
  });
  final String title;
  final String hintText;
  final String Function(String?)? validator;
  final Icon prefixIicon;
  final bool isObscure;
  final bool withSuffixicon;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: Styles.titleStyle.copyWith(
              fontWeight: FontWeight.w400,
            ),
          ),
          CustomFormTextFiled(
            isObsucure: isObscure,
            hintText: hintText,
            validator: validator,
            prefixIcon: prefixIicon,
            withSuffixIcon: withSuffixicon,
          )
        ],
      ),
    );
  }
}
