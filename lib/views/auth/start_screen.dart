// ignore_for_file: prefer_const_constructors, library_private_types_in_public_api

import 'package:flutter/material.dart';
import 'package:custom_navigation_bar/custom_navigation_bar.dart';
import 'package:food_app/views/navpages/home_screen.dart';
import 'package:food_app/views/navpages/mylist_screen.dart';
import 'package:food_app/views/navpages/order_screen.dart';
import 'package:food_app/views/navpages/profile_screen.dart';



class StartScreen extends StatefulWidget {
  const StartScreen({Key? key}) : super(key: key);

  @override
  _StartScreenState createState() => _StartScreenState();
}

class _StartScreenState extends State<StartScreen> {
  int _currentIndex = 0;
  final List<Widget> appScreens = [
    HomeScreen(),
    OrderScreen(),
    MylistScreen(),
    ProfileScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      backgroundColor: Colors.white,
      body: appScreens[_currentIndex],
      bottomNavigationBar: CustomNavigationBar(
        iconSize: 30.0,
        selectedColor: Color(0xfff55b03),
        strokeColor: Color(0xfff55b03),
        unSelectedColor: Color(0xffacacac),
        backgroundColor: Colors.white,
        items: [
          CustomNavigationBarItem(
            icon: Icon(Icons.business_center_sharp),
            title: Text("Home"),
            selectedTitle: Text(
              "Home",
              style: TextStyle(
                color: Color(0xfff55b03),
              ),
            ),
          ),
          CustomNavigationBarItem(
            icon: Icon(Icons.receipt),
            title: Text("Order"),
            selectedTitle: Text(
              "Order",
              style: TextStyle(
                color: Color(0xfff55b03),
              ),
            ),
          ),
          CustomNavigationBarItem(
            icon: Icon(Icons.bookmark_outline),
            title: Text("My List"),
            selectedTitle: Text(
              "My List",
              style: TextStyle(
                color: Color(0xfff55b03),
              ),
            ),
          ),
          CustomNavigationBarItem(
            icon: Icon(Icons.person_outline),
            title: Text("Profile"),
            selectedTitle: Text(
              "Profile",
              style: TextStyle(
                color: Color(0xfff55b03),
              ),
            ),
          ),
        ],
        currentIndex: _currentIndex,
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
      ),
      
    );
  }
}
