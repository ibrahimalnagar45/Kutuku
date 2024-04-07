import 'package:flutter/material.dart';
import 'package:kutuku/constants.dart';

import '../../../../../core/utils/helpers/build_outline_input_border.dart';

class CustomFormTextFiled extends StatefulWidget {
  const CustomFormTextFiled({
    super.key,
    this.validator,
    required this.hintText,
  });
  final String Function(String?)? validator;
  final String hintText;

  @override
  State<CustomFormTextFiled> createState() => _CustomFormTextFiledState();
}

class _CustomFormTextFiledState extends State<CustomFormTextFiled> {
  late FocusNode _focusNode;
  bool isFocused = false;
  @override
  void initState() {
    _focusNode = FocusNode();
    _focusNode.addListener(() {
      _handleFocusChange();
    });
    super.initState();

  
  }

  @override
  void dispose() {
    _focusNode.removeListener(_handleFocusChange);
    _focusNode.dispose();

    // TODO: implement dispose
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
        focusNode: _focusNode,
        validator: widget.validator,
        decoration: InputDecoration(
          contentPadding: const EdgeInsets.symmetric(vertical: -5),
          hintFadeDuration: const Duration(seconds: 2),
          prefixIcon: const Icon(Icons.person),
          prefixIconColor: isFocused ? kPrimaryColor : Colors.grey,
          hintText: widget.hintText,
          border: BuildOutLineInputBorder(),
          // disabledBorder: BuildOutLineInputBorder(),
          // enabledBorder: BuildOutLineInputBorder(
          //   color: kPrimaryColor,
          // ),
          focusedBorder:
              BuildOutLineInputBorder(color: kPrimaryColor, enabled: true),
        ),
      ),
    );
  }
}
