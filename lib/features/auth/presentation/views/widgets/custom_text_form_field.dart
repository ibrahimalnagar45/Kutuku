import 'package:flutter/material.dart';

class CustomTextFormField extends StatelessWidget {
  const CustomTextFormField({
    super.key,
    this.hintText,
    this.isPassword = false,
    this.validator,
  });
  final String? hintText;
  final bool isPassword;
  final String? Function(String?)? validator;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      validator: validator,
      decoration: InputDecoration(
        hintText: hintText,
        suffixIcon: isPassword
            ? const Icon(
                Icons.remove_red_eye,
                color: Colors.grey,
              )
            : null,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(
            12,
          ),
        ),
      ),
    );
  }
}
