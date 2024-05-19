import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import 'custom_container.dart';
import 'grey_container.dart';
import 'user_info.dart';
import 'user_pic.dart';

class ProfileViewBody extends StatelessWidget {
  const ProfileViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const SafeArea(
            child: Padding(
              padding: EdgeInsets.only(left: 30.0),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'Profile',
                  style: TextStyle(
                    color: Color.fromARGB(255, 67, 29, 148),
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          const ProfilePicture(),
          const SizedBox(
            height: 10,
          ),
          const UserInfo(),
          const SizedBox(
            height: 20,
          ),
          Container(
            height: 50,
            color: Colors.grey.withOpacity(.2),
            width: double.infinity,
            child: const Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'content',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                  ),
                ),
              ),
            ),
          ),
          const CustomContainer(
            icon: Icon(
              Icons.favorite,
              color: Color.fromARGB(255, 116, 75, 206),
              size: 35,
            ),
            title: 'favorite',
          ),
          const GeryContainer(),
          const CustomContainer(
            icon: Icon(
              Icons.shopping_cart,
              size: 35,
              color: Color.fromARGB(255, 116, 75, 206),
            ),
            title: 'Cart',
          ),
          const GeryContainer(),
          const CustomContainer(
            icon: Icon(
              Icons.settings,
              size: 35,
              color: Color.fromARGB(255, 116, 75, 206),
            ),
            title: 'Settings',
          ),
          Container(
            height: 50,
            color: Colors.grey.withOpacity(.2),
            width: double.infinity,
            child: const Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'Prefrences',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 15,
                  ),
                ),
              ),
            ),
          ),
          const CustomContainer(
            icon: Icon(Icons.logout_outlined),
            title: 'Sing out',
          ),
          Expanded(
              child: Container(
            height: double.infinity,
            color: Colors.grey.withOpacity(.2),
          ))
        ],
      ),
    );
  }
}
