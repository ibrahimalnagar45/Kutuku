import 'package:flutter/material.dart';
import 'package:kutuku/constants.dart';

import '../../../../../core/utils/helpers/build_outline_input_border.dart';

class CustomFormTextFiled extends StatefulWidget {
  const CustomFormTextFiled({
    super.key,
    this.validator,
    required this.hintText,
    required this.prefixIcon,
    this.isObsucure = false,
    this.withSuffixIcon = false,
  });
  final String Function(String?)? validator;
  final String hintText;
  final Icon prefixIcon;
  final bool isObsucure;
  final bool withSuffixIcon;

  @override
  State<CustomFormTextFiled> createState() => _CustomFormTextFiledState();
}

class _CustomFormTextFiledState extends State<CustomFormTextFiled> {
  late FocusNode _focusNode;
  bool isFocused = false;
  bool showPassword = false;
  @override
  void initState() {
    _focusNode = FocusNode();
    _focusNode.addListener(() {
      _handleFocusChange();
    });
    showPassword = widget.isObsucure;
    super.initState();
  }
  @override
  void dispose() {
    _focusNode.removeListener(_handleFocusChange);
    _focusNode.dispose();

    super.dispose();
  }
  void _handleFocusChange() {
    setState(() {
      isFocused = _focusNode.hasFocus;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.grey.withOpacity(.05),
        borderRadius: BorderRadius.circular(kPrimaryPadding),
      ),
      child: TextFormField(
        obscureText: showPassword,
        obscuringCharacter: '*',
        focusNode: _focusNode,
        validator: widget.validator,
        decoration: InputDecoration(
          contentPadding: const EdgeInsets.symmetric(vertical: -5),
          hintText: widget.hintText,
          hintFadeDuration: const Duration(milliseconds: 500),
          hintStyle: TextStyle(color: Colors.grey.withOpacity(.8)),
          prefixIcon: widget.prefixIcon,
          prefixIconColor:
              isFocused ? kPrimaryColor : Colors.grey.withOpacity(.4),
          suffixIcon: widget.withSuffixIcon 
              ? IconButton(
                  onPressed: () async {
                    setState(() {
                      showPassword = false;
                    });
                    await Future.delayed(
                      const Duration(seconds: 1),
                    );

                    setState(() {
                      showPassword = true;
                    });
                  },
                  icon: const Icon(Icons.remove_red_eye),
                  color: Colors.grey.withOpacity(.4),
                )
              : null,
          border: BuildOutLineInputBorder(),
          focusedBorder:
              BuildOutLineInputBorder(color: kPrimaryColor, enabled: true),
        ),
      ),
    );
  }
}
