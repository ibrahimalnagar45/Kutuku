import 'dart:developer';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kutuku/features/Home/presentation/managar/cubits/product_cubit/product_cubit.dart';
import 'package:kutuku/features/Home/presentation/managar/cubits/product_cubit/product_state.dart';
import 'package:kutuku/features/Home/presentation/views/widgets/category_title.dart';
import 'package:kutuku/features/Home/presentation/views/widgets/main_home_widgetd.dart';

import 'adds_list_view.dart';

import 'products_list.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ProductCubit, ProductState>(
      builder: (context, state) {
        if (state is ProductsLoading) {
          return const Column(
            children: [
              MainHomeViewWidgets(),
              SizedBox(
                height: 15,
              ),
              AddsListView(),
              SizedBox(
                height: 15,
              ),
              CategoryTitle(categoryTitle: 'New Affrails🔥'),
              SizedBox(
                height: 15,
              ),
              Spacer(),
              Center(child: CircularProgressIndicator()),
              Spacer(),
            ],
          );
        } else if (state is ProductsSuccess) {
          return state.products.isEmpty
              ? const Center(
                  child: Text('No items Found'),
                )
              : CustomScrollView(
                  physics: const BouncingScrollPhysics(),
                  slivers: [
                    const SliverToBoxAdapter(
                      child: MainHomeViewWidgets(),
                    ),
                    const SliverToBoxAdapter(
                      child: SizedBox(
                        height: 15,
                      ),
                    ),
                    const SliverToBoxAdapter(
                      child: AddsListView(),
                    ),
                    const SliverToBoxAdapter(
                      child: SizedBox(
                        height: 15,
                      ),
                    ),
                    const SliverToBoxAdapter(
                      child: CategoryTitle(categoryTitle: 'New Affrails🔥'),
                    ),
                    const SliverToBoxAdapter(
                      child: SizedBox(
                        height: 15,
                      ),
                    ),
                 
                    ProductsList(
                      products: state.products,
                    ),
                  ],
                );
        } else if (state is ProductsFaluire) {
          log(state.errorMessage.toString());
          return Column(
            children: [
              const MainHomeViewWidgets(),
              const SizedBox(
                height: 15,
              ),
              const AddsListView(),
              const SizedBox(
                height: 15,
              ),
              Center(
                child: Text(state.errorMessage),
              ),
            ],
          );
        } else {
          return const Text('Something went wrong');
        }
      },
    );
  }
}
