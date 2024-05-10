import 'package:flutter/material.dart';
import 'package:kutuku/core/utils/styles.dart';
import 'package:kutuku/features/auth/presentation/views/widgets/custom_text_form_field.dart';

class InputSection extends StatelessWidget {
  const InputSection(
      {super.key,
      required this.title,
      required this.hintText,
      this.validator,
      required this.prefixIicon,
      this.isObscure = false,
      this.suffixicon,
      this.keyboardType,
      this.onSaved,
      this.suffixIconOnPressed, required this.passowrdField, this.textInputAction});
  final String title;
  final String hintText;
  final String? Function(String?)? validator;
  final Icon prefixIicon;
  final bool isObscure;
  final IconData? suffixicon;
  final void Function(String?)? onSaved;
  final Function()? suffixIconOnPressed;
  final TextInputType? keyboardType;
  final bool passowrdField;
  final TextInputAction? textInputAction;
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
          const SizedBox(
            height: 5,
          ),
          CustomFormTextFiled(
            textInputAction: textInputAction,
            onSaved: onSaved,
            keyboardType: keyboardType,
            isObsucure: isObscure,
            hintText: hintText,
            validator: validator,
            prefixIcon: prefixIicon,
            suffixIcon: suffixicon,
            suffixIconOnPressed: suffixIconOnPressed,
            passowrdField: passowrdField,
          )
        ],
      ),
    );
  }
}
