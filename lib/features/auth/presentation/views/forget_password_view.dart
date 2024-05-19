import 'package:flutter/material.dart'; 
 import 'widgets/forger_password_body.dart';
 class StoreForgetPasswordView extends StatelessWidget {
  const StoreForgetPasswordView ({super.key});

  @override
  Widget build(BuildContext context) {
    return const  Scaffold(
      body: Padding(
        padding:   EdgeInsets.symmetric(
          horizontal: 12,
        ),
        
          child: ForgetPasswordViewBody(),
        
      ),
    );
  }
}
