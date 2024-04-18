import 'package:flutter/material.dart';
import 'package:kutuku/features/onboarding/data/models/slider_model.dart';

import 'core/models/product_model.dart';

const String kAppName = "Kutuku";
const Color kPrimaryColor = Color(0xff514eb7);
Color kSecondaryColor = Colors.grey.withOpacity(.5);
const double kPrimaryPadding = 20;

const List<SliderModel> kSliders = [
  SliderModel(
      image: 'assets/images/onboarding1.jpeg',
      title: 'Various Collection Of The Latest Products',
      description:
          'Urna amet, suspendisse ullamcorper ac elit diam facilisis cursus vestibulum'),
  SliderModel(
      image: 'assets/images/onboarding2.jpeg',
      title: 'Various Collection Of The Latest Products',
      description:
          'Urna amet, suspendisse ullamcorper ac elit diam facilisis cursus vestibulum'),
  SliderModel(
      image: 'assets/images/onboarding3.jpeg',
      title: 'Various Collection Of The Latest Products',
      description:
          'Urna amet, suspendisse ullamcorper ac elit diam facilisis cursus vestibulum')
];
const List<ProductModel> testProducts = [
  ProductModel(
    name: 'Bag',
    description: 'Hand Bag',
    image: 'assets/images/onboarding3.jpeg',
    price: 122,
  ),
  ProductModel(
    name: 'Shirts',
    description: 'Colored Shirts ',
    image: 'assets/images/onboarding2.jpeg',
    price: 132,
  ),
  ProductModel(
    name: 'MakeUp',
    description: 'Different Makup ',
    image: 'assets/images/onboarding3.jpeg',
    price: 132,
  ),
];
