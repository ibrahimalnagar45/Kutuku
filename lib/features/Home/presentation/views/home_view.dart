import 'package:dio/dio.dart';
 import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kutuku/constants.dart';
import 'package:kutuku/core/services/api_service.dart';
import 'package:kutuku/features/Home/data/repos/product_repo_impl.dart';
import 'package:kutuku/features/Home/presentation/managar/cubits/product_cubit/product_cubit.dart';
import 'package:kutuku/features/Home/presentation/views/widgets/home_footer_buttons.dart';
import 'package:kutuku/features/Home/presentation/views/widgets/home_view_body.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key, this.category = ''});
  final String? category;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // bottomNavigationBar:  CurvedNavigationBar(),
      persistentFooterButtons: const [PersistentFooterButtons()],
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: kPrimaryPadding),
        child: MultiBlocProvider(
          providers: [
            BlocProvider(
              create: (context) => ProductCubit(
                ProcutRepoImpl(
                  api: ApiService(
                    dio: Dio(),
                  ),
                ),
              )..fetchAllProducts(),
            ),
          ],
          child: const HomeViewBody(),
        ),
      ),
    );
  }
}
