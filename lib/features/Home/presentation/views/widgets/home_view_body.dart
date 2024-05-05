import 'package:flutter/material.dart';
 import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kutuku/features/Home/presentation/managar/cubits/product_cubit/product_cubit.dart';
import 'package:kutuku/features/Home/presentation/managar/cubits/product_cubit/product_state.dart';
import 'package:kutuku/features/Home/presentation/views/widgets/category_title.dart';
import 'package:kutuku/features/Home/presentation/views/widgets/main_home_widgetd.dart';
 
import 'adds_list_view.dart';

import 'product_card.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ProductCubit, ProductState>(
      builder: (context, state) {
        if (state is ProductLoading) {
          return const CircularProgressIndicator();
        } else if (state is ProductSuccess) {
          return ListView.builder(
              itemCount: state.products.length - 1,
              itemBuilder: (context, index) {
                return index == 0
                    ? const Column(
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
                        ],
                      )
                    : Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          ProductCard(
                            productModel: state.products[index],
                          ),
                          ProductCard(
                            productModel: state.products[index + 1],
                          ),
                        ],
                      );
              });
        } else if (state is ProductFaluire) {
          return Center(child: Text(state.errorMessage));
        } else {
          return const Text('Something went wrong');
        }
      },
    );
  }
}
/**
        return ListView.builder(
            itemCount: testProducts.length - 1,
            itemBuilder: (context, index) {
              return index == 0
                  ? const Column(
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
                      ],
                    )
                  : Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        ProductCard(
                          productModel: testProducts[index],
                        ),
                        ProductCard(
                          productModel: testProducts[index + 1],
                        ),
                      ],
                    );
            }); */