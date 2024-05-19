import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../manager/cubits/Auth_cubit/auth_cubit.dart';
import 'widgets/register_view_body.dart'; 
class StoreRegisterview extends StatelessWidget {
  const StoreRegisterview({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 20,
      ),
      child: BlocProvider(
        create: (context) => AuthCubit(),
        child: const RegisterViewBody(),
      ),
    ));
  }
}
