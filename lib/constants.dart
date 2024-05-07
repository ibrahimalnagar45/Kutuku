import 'package:flutter/material.dart';
import 'package:kutuku/features/onboarding/data/models/slider_model.dart';

import 'features/Home/data/models/prodcut_model.dart';

int viewId = 0;
const String baseurl = 'https://fakestoreapi.com/products';

const String baseUrl = 'https://dummyjson.com/products';

const String kAppName = "Kutuku";
const Color kPrimaryColor = Color(0xff514eb7);
Color kSecondaryColor = Colors.grey.withOpacity(.5);
const double kPrimaryPadding = 20;
const List<String> kCategoris = [
  'assets/images/smart_phone.jpg',
  'assets/images/laptop.jpg',
  'assets/images/smart_phone.jpg',
  'assets/images/laptop.jpg',
  'assets/images/smart_phone.jpg',
  'assets/images/laptop.jpg',
  'assets/images/smart_phone.jpg',
  'assets/images/laptop.jpg',
  'assets/images/smart_phone.jpg',
  'assets/images/laptop.jpg',
  'assets/images/smart_phone.jpg',
  'assets/images/laptop.jpg',
  'assets/images/smart_phone.jpg',
  'assets/images/laptop.jpg',
  'assets/images/smart_phone.jpg',
  'assets/images/laptop.jpg',
  'assets/images/smart_phone.jpg',
  'assets/images/laptop.jpg',
  'assets/images/smart_phone.jpg',
  'assets/images/laptop.jpg',
];
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
List<ProductModel> testProducts = [
  ProductModel(
    category: '',
    id: 1,
    title: 'Bag',
    description: 'Hand Bag',
    image: 'assets/images/onboarding3.jpeg',
    price: 122,
  ),
  ProductModel(
    category: '',
    id: 1,
    title: 'Shirts',
    description: 'Colored Shirts ',
    image: 'assets/images/onboarding2.jpeg',
    price: 132,
  ),
  ProductModel(
    category: '',
    id: 1,
    title: 'MakeUp',
    description: 'Different Makup ',
    image: 'assets/images/onboarding3.jpeg',
    price: 132,
  ),
  ProductModel(
    category: '',
    id: 1,
    title: 'Bag',
    description: 'Hand Bag',
    image: 'assets/images/onboarding3.jpeg',
    price: 122,
  ),
  ProductModel(
    category: '',
    id: 1,
    title: 'Shirts',
    description: 'Colored Shirts ',
    image: 'assets/images/onboarding2.jpeg',
    price: 132,
  ),
  ProductModel(
    category: '',
    id: 1,
    title: 'MakeUp',
    description: 'Different Makup ',
    image: 'assets/images/onboarding3.jpeg',
    price: 132,
  ),
  ProductModel(
    category: '',
    id: 1,
    title: 'Bag',
    description: 'Hand Bag',
    image: 'assets/images/onboarding3.jpeg',
    price: 122,
  ),
  ProductModel(
    category: '',
    id: 1,
    title: 'Shirts',
    description: 'Colored Shirts ',
    image: 'assets/images/onboarding2.jpeg',
    price: 132,
  ),
  ProductModel(
    category: '',
    id: 1,
    title: 'MakeUp',
    description: 'Different Makup ',
    image: 'assets/images/onboarding3.jpeg',
    price: 132,
  ),
  ProductModel(
    category: '',
    id: 1,
    title: 'Bag',
    description: 'Hand Bag',
    image: 'assets/images/onboarding3.jpeg',
    price: 122,
  ),
  ProductModel(
    category: '',
    id: 1,
    title: 'Shirts',
    description: 'Colored Shirts ',
    image: 'assets/images/onboarding2.jpeg',
    price: 132,
  ),
  ProductModel(
    category: '',
    id: 1,
    title: 'MakeUp',
    description: 'Different Makup ',
    image: 'assets/images/onboarding3.jpeg',
    price: 132,
  ),
  ProductModel(
    category: '',
    id: 1,
    title: 'Bag',
    description: 'Hand Bag',
    image: 'assets/images/onboarding3.jpeg',
    price: 122,
  ),
  ProductModel(
    category: '',
    id: 1,
    title: 'Shirts',
    description: 'Colored Shirts ',
    image: 'assets/images/onboarding2.jpeg',
    price: 132,
  ),
  ProductModel(
    category: '',
    id: 1,
    title: 'MakeUp',
    description: 'Different Makup ',
    image: 'assets/images/onboarding3.jpeg',
    price: 132,
  ),
  ProductModel(
    category: '',
    id: 1,
    title: 'Bag',
    description: 'Hand Bag',
    image: 'assets/images/onboarding3.jpeg',
    price: 122,
  ),
  ProductModel(
    category: '',
    id: 1,
    title: 'Shirts',
    description: 'Colored Shirts ',
    image: 'assets/images/onboarding2.jpeg',
    price: 132,
  ),
  ProductModel(
    category: '',
    id: 1,
    title: 'MakeUp',
    description: 'Different Makup ',
    image: 'assets/images/onboarding3.jpeg',
    price: 132,
  ),
  ProductModel(
    category: '',
    id: 1,
    title: 'Bag',
    description: 'Hand Bag',
    image: 'assets/images/onboarding3.jpeg',
    price: 122,
  ),
  ProductModel(
    category: '',
    id: 1,
    title: 'Shirts',
    description: 'Colored Shirts ',
    image: 'assets/images/onboarding2.jpeg',
    price: 132,
  ),
  ProductModel(
    category: '',
    id: 1,
    title: 'MakeUp',
    description: 'Different Makup ',
    image: 'assets/images/onboarding3.jpeg',
    price: 132,
  ),
  ProductModel(
    title: 'Bag',
    category: '',
    id: 1,
    description: 'Hand Bag',
    image: 'assets/images/onboarding3.jpeg',
    price: 122,
  ),
  ProductModel(
    title: 'Shirts',
    category: '',
    id: 1,
    description: 'Colored Shirts ',
    image: 'assets/images/onboarding2.jpeg',
    price: 132,
  ),
  ProductModel(
    title: 'MakeUp',
    category: '',
    id: 1,
    description: 'Different Makup ',
    image: 'assets/images/onboarding3.jpeg',
    price: 132,
  ),
  ProductModel(
    category: '',
    id: 1,
    title: 'MakeUp',
    description: 'Different Makup ',
    image: 'assets/images/onboarding3.jpeg',
    price: 132,
  ),
];
