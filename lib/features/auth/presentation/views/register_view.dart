import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kutuku/constants.dart';
import 'package:kutuku/features/auth/presentation/manager/cubits/Auth_cubit/auth_cubit.dart';
import 'package:kutuku/features/auth/presentation/views/widgets/register_view_body.dart';

class Registerview extends StatelessWidget {
  const Registerview({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: kPrimaryPadding,
      ),
      child: BlocProvider(
        create: (context) => AuthCubit(),
        child: const RegisterViewBody(),
      ),
    ));
  }
}
