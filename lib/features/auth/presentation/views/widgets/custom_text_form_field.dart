import 'package:flutter/material.dart';
import 'package:kutuku/constants.dart';

import '../../../../../core/utils/helpers/build_outline_input_border.dart';

class CustomFormTextFiled extends StatefulWidget {
  const CustomFormTextFiled(
      {super.key,
      this.validator,
      required this.hintText,
      required this.prefixIcon,
      this.isObsucure = false,
      this.suffixIcon,
      this.keyboardType,
      this.onSaved,
      this.padding = kPrimaryPadding,
      this.suffixIconOnPressed,
      required this.passowrdField});
  final String? Function(String?)? validator;
  final String hintText;
  final Icon prefixIcon;
  final bool isObsucure;
  final IconData? suffixIcon;
  final TextInputType? keyboardType;
  final void Function(String?)? onSaved;
  final double? padding;
  final Function()? suffixIconOnPressed;
  final bool passowrdField;

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
        borderRadius: BorderRadius.circular(widget.padding!),
      ),
      child: TextFormField(
        onSaved: widget.onSaved,
        keyboardType: widget.keyboardType,
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
          suffixIcon: widget.passowrdField
              ? GestureDetector(
                  onTap: () async {
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
                  onLongPress: () => showPassword = true,
                  onLongPressCancel: () => showPassword = false,
                  child: const Icon(
                    Icons.remove_red_eye,
                  ),
                )
              : IconButton(
                  icon: Icon(widget.suffixIcon),
                  onPressed: widget.suffixIconOnPressed,
                ),
          border: buildOutLineInputBorder(),
          focusedBorder:
              buildOutLineInputBorder(color: kPrimaryColor, enabled: true),
        ),
      ),
    );
  }
}
