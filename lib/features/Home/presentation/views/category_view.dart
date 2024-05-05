import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kutuku/constants.dart';
import 'package:kutuku/core/services/api_service.dart';
import 'package:kutuku/features/Home/data/repos/product_repo.dart';
import 'package:kutuku/features/Home/presentation/managar/cubits/product_cubit/product_cubit.dart';
import 'package:kutuku/features/Home/presentation/managar/cubits/product_cubit/product_state.dart';
import 'package:kutuku/features/Home/presentation/views/widgets/home_footer_buttons.dart';
import 'package:kutuku/features/Home/presentation/views/widgets/main_home_widgetd.dart';
import 'package:kutuku/features/Home/presentation/views/widgets/right_category_card.dart';

import '../../data/repos/product_repo_impl.dart';

class CategoryView extends StatelessWidget {
  const CategoryView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) =>
          ProductCubit(ProcutRepoImpl(api: ApiService(dio: Dio())))
            ..fetchAllcategories(),
      child: Scaffold(
        persistentFooterButtons: const [
          PersistentFooterButtons(),
        ],
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: kPrimaryPadding),
          child: BlocBuilder<ProductCubit, ProductState>(
            builder: (context, state) {
              
              if (state is CategoryLoading) {
                return const Center(child: CircularProgressIndicator());
              } else if (state is CategorySuccess) {
                return ListView.builder(
                  itemCount: state.categoris.length - 1,
                  itemBuilder: (context, index) {
                    if (index == 1) {
                      return const MainHomeViewWidgets();
                    } else {
                      return CatrgoryCard(
                          image: 'assets/images/onboarding2.jpeg',
                          title: state.categoris[index],
                          description: state.categoris[index],
                          isRightText: true);
                    }
                  },
                  // children: const [
                  //   MainHomeViewWidgets(),
                  //   SizedBox(
                  //     height: 15,
                  //   ),
                  //   CatrgoryCard(
                  //     isRightText: true,
                  //     image: 'assets/images/onboarding2.jpeg',
                  //     title: 'Clothes',
                  //     description: '211 Item',
                  //   ),
                  //   CatrgoryCard(
                  //     isRightText: false,
                  //     image: 'assets/images/onboarding2.jpeg',
                  //     title: 'Clothes',
                  //     description: '211 Item',
                  //   )
                  // ],
                );
              } else if (state is CategoryFaluire) {
                return Center(child: Text(state.errorMessage));
              } else {
                return const Center(child: Text('something went wrong'));
              }
            },
          ),
        ),
      ),
    );
  }
}
