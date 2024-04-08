import 'package:flutter/material.dart';
import 'package:kutuku/features/onboarding/data/models/slider_model.dart';

const String kAppName = "Kutuku";
const Color kPrimaryColor = Color(0xff514eb7);
  Color kSecondaryColor = Colors.grey.withOpacity(.5);
const double kPrimaryPadding = 15;

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
