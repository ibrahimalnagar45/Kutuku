// import 'package:flutter/material.dart';
// import 'package:kutuku/constants.dart';
// import 'package:kutuku/features/Home/presentation/views/widgets/adds_list_view.dart';
// import 'package:kutuku/features/Home/presentation/views/widgets/product_card.dart';

// import 'category_title.dart';
// import 'main_home_widgetd.dart';

// class ProductsGridView extends StatelessWidget {
//   const ProductsGridView({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return ListView.builder(
//         itemCount: testProducts.length,
//         itemBuilder: (context, index) {
//           return index == 0
//               ? Column(
//                   children: [
//                     MainHomeViewWidgets(),
//                     SizedBox(
//                       height: 15,
//                     ),
//                     AddsListView(),
//                     SizedBox(
//                       height: 15,
//                     ),
//                     CategoryTitle(categoryTitle: 'New Affrails🔥'),
//                     SizedBox(
//                       height: 15,
//                     ),
//                   ],
//                 )
//               : Row(
//                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                   children: [
//                     ProductCard(
//                       productModel: testProducts[index],
//                     ),
//                     ProductCard(
//                       productModel: testProducts[index],
//                     ),
//                   ],
//                 );
//         });
//   }
// }
