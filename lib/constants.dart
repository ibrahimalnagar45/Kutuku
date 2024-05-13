import 'package:flutter/material.dart';
import 'package:kutuku/features/onboarding/data/models/slider_model.dart';

import 'core/models/prodcut_model.dart';

int viewId = 0;
// const String baseurl = 'https://fakestoreapi.com/products';

const String baseUrl = 'https://dummyjson.com/products';
const String networkImageError =
    'https://cdn.dummyjson.com/product-images/1/1.jpg';
// 'https://cdn4.iconfinder.com/data/icons/ui-beast-3/32/ui-49-4096.png';
const String kAppName = "Kutuku";
const Color kPrimaryColor = Color(0xff514eb7);
Color kSecondaryColor = Colors.grey.withOpacity(.5);
const double kPrimaryPadding = 20;
const List<String> kCategoris = [
  'assets/images/smart_phone.jpg',
  // 'assets/images/smart_phone.jpg',
  // 'assets/images/smart_phone.jpg',
  // 'assets/images/smart_phone.jpg',
  // 'assets/images/smart_phone.jpg',
  // 'assets/images/smart_phone.jpg',
  // 'assets/images/smart_phone.jpg',
  // 'assets/images/smart_phone.jpg',
  // 'assets/images/smart_phone.jpg',
  // 'assets/images/smart_phone.jpg',
  // 'assets/images/smart_phone.jpg',
  // 'assets/images/smart_phone.jpg',
  // 'assets/images/smart_phone.jpg',
  // 'assets/images/smart_phone.jpg',
  // 'assets/images/smart_phone.jpg',
  // 'assets/images/smart_phone.jpg',
  // 'assets/images/smart_phone.jpg',
  // 'assets/images/smart_phone.jpg',
  // 'assets/images/smart_phone.jpg',
  // 'assets/images/smart_phone.jpg',
  // 'assets/images/smart_phone.jpg',
  'assets/images/laptop.jpg',
  'assets/images/fragrances.jpg',
  'assets/images/skincare.jpg',
  'assets/images/groceries.jpg',
  'assets/images/home-decoration.jpg',
  'assets/images/furniture.jpg',
  'assets/images/tops.jpg',
  'assets/images/womens-dresses.jpg',
  'assets/images/women_shoes.jpg',
  'assets/images/mens-shirts.jpg',
  'assets/images/mens-shoes.jpg',
  'assets/images/mens_watches.jpg',
  'assets/images/womens-watches.jpg',
  'assets/images/women_bags.jpg',
  'assets/images/women-jewellery.jpg',
  'assets/images/sunglasses.jpg',
  'assets/images/automotive.jpg',
  'assets/images/motorcycle.jpg',
  'assets/images/lighting.jpg',
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
    images: [],
    category: '',
    id: 1,
    title: 'Bag',
    description: 'Hand Bag',
    image: 'assets/images/onboarding3.jpeg',
    price: 122,
  ),
  ProductModel(
    images: [],

    category: '',
    id: 1,
    title: 'Shirts',
    description: 'Colored Shirts ',
    image: 'assets/images/onboarding2.jpeg',
    price: 132,
  ),
  ProductModel(
    images: [],
    category: '',
    id: 1,
    title: 'MakeUp',
    description: 'Different Makup ',
    image: 'assets/images/onboarding3.jpeg',
    price: 132,
  ),
  ProductModel(
    images: [],
    category: '',
    id: 1,
    title: 'Bag',
    description: 'Hand Bag',
    image: 'assets/images/onboarding3.jpeg',
    price: 122,
  ),
  ProductModel(
    images: [],
    category: '',
    id: 1,
    title: 'Shirts',
    description: 'Colored Shirts ',
    image: 'assets/images/onboarding2.jpeg',
    price: 132,
  ),
  ProductModel(
    images: [],
    category: '',
    id: 1,
    title: 'MakeUp',
    description: 'Different Makup ',
    image: 'assets/images/onboarding3.jpeg',
    price: 132,
  ),
  ProductModel(
    images: [],
    category: '',
    id: 1,
    title: 'Bag',
    description: 'Hand Bag',
    image: 'assets/images/onboarding3.jpeg',
    price: 122,
  ),
  ProductModel(
    category: '',
    images: [],
    id: 1,
    title: 'Shirts',
    description: 'Colored Shirts ',
    image: 'assets/images/onboarding2.jpeg',
    price: 132,
  ),
  ProductModel(
    images: [],
    category: '',
    id: 1,
    title: 'MakeUp',
    description: 'Different Makup ',
    image: 'assets/images/onboarding3.jpeg',
    price: 132,
  ),
  ProductModel(
    category: '',
    images: [],
    id: 1,
    title: 'Bag',
    description: 'Hand Bag',
    image: 'assets/images/onboarding3.jpeg',
    price: 122,
  ),
  ProductModel(
    images: [],
    category: '',
    id: 1,
    title: 'Shirts',
    description: 'Colored Shirts ',
    image: 'assets/images/onboarding2.jpeg',
    price: 132,
  ),
  ProductModel(
    category: '',
    images: [],
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
    images: [],
    image: 'assets/images/onboarding3.jpeg',
    price: 122,
  ),
  ProductModel(
    category: '',
    id: 1,
    title: 'Shirts',
    images: [],
    description: 'Colored Shirts ',
    image: 'assets/images/onboarding2.jpeg',
    price: 132,
  ),
  ProductModel(
    category: '',
    images: [],
    id: 1,
    title: 'MakeUp',
    description: 'Different Makup ',
    image: 'assets/images/onboarding3.jpeg',
    price: 132,
  ),
  ProductModel(
    images: [],
    category: '',
    id: 1,
    title: 'Bag',
    description: 'Hand Bag',
    image: 'assets/images/onboarding3.jpeg',
    price: 122,
  ),
  ProductModel(
    category: '',
    images: [],
    id: 1,
    title: 'Shirts',
    description: 'Colored Shirts ',
    image: 'assets/images/onboarding2.jpeg',
    price: 132,
  ),
  ProductModel(
    category: '',
    id: 1,
    images: [],
    title: 'MakeUp',
    description: 'Different Makup ',
    image: 'assets/images/onboarding3.jpeg',
    price: 132,
  ),
  ProductModel(
    category: '',
    id: 1,
    title: 'Bag',
    images: [],
    description: 'Hand Bag',
    image: 'assets/images/onboarding3.jpeg',
    price: 122,
  ),
  ProductModel(
    category: '',
    id: 1,
    title: 'Shirts',
    description: 'Colored Shirts ',
    images: [],
    image: 'assets/images/onboarding2.jpeg',
    price: 132,
  ),
  ProductModel(
    category: '',
    id: 1,
    title: 'MakeUp',
    images: [],
    description: 'Different Makup ',
    image: 'assets/images/onboarding3.jpeg',
    price: 132,
  ),
  ProductModel(
    title: 'Bag',
    images: [],
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
    images: [],
    description: 'Colored Shirts ',
    image: 'assets/images/onboarding2.jpeg',
    price: 132,
  ),
  ProductModel(
    title: 'MakeUp',
    category: '',
    images: [],
    id: 1,
    description: 'Different Makup ',
    image: 'assets/images/onboarding3.jpeg',
    price: 132,
  ),
  ProductModel(
    category: '',
    images: [],
    id: 1,
    title: 'MakeUp',
    description: 'Different Makup ',
    image: 'assets/images/onboarding3.jpeg',
    price: 132,
  ),
];
