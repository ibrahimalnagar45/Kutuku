import 'package:flutter/material.dart';
import 'package:kutuku/constants.dart';

class VerificationCodeBloc extends StatefulWidget {
  const VerificationCodeBloc(
      {super.key, this.isFocused = false, this.onsubmitted});
  final bool isFocused;
  final Function(String)? onsubmitted;
  @override
  State<VerificationCodeBloc> createState() => _VerificationCodeBlocState();
}

class _VerificationCodeBlocState extends State<VerificationCodeBloc> {
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

  void _handleFocusChange() {
    setState(() {
      isFocused = _focusNode.hasFocus;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 70,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        border: Border.all(
          color: isFocused ? kPrimaryColor : kSecondaryColor,
          width: isFocused ? 1 : .5,
        ),
      ),
      child: Center(
        child: TextField(
          onSubmitted: widget.onsubmitted,
          autofocus: widget.isFocused,
          focusNode: _focusNode,
          textAlign: TextAlign.center,
          cursorColor: kPrimaryColor.withOpacity(.4),
          decoration: const InputDecoration.collapsed(hintText: ''),
        ),
      ),
    );
  }
}
