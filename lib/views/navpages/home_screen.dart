// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, library_private_types_in_public_api

import 'package:flutter/material.dart';
import 'package:food_app/views/utils/app_text.dart';

import '../utils/fast_food.dart';
import '../utils/food_menu.dart';
import '../utils/location_marker.dart';
import '../utils/menu_category.dart';
import '../utils/search_box.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SearchBox(),
            LocationMarker(),
            MenuCategory(),
            Padding(
              padding: const EdgeInsets.fromLTRB(20.0, 20.0, 0, 20.0),
              child: AppText(
                data: "Food Menu",
                color: Colors.black,
                fsize: 28.0,
                fweight: FontWeight.bold,
              ),
            ),
            FoodMenu(),
            Padding(
              padding: const EdgeInsets.fromLTRB(20.0, 20.0, 20.0, 0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  AppText(
                    data: 'Near me',
                    color: Colors.black,
                    fsize: 28.0,
                    fweight: FontWeight.bold,
                  ),
                  AppText(
                    data: 'See All',
                    color: Colors.black,
                    fsize: 18.0,
                    fweight: FontWeight.w500,
                  ),
                ],
              ),
            ),
            FastFood(),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 20.0),
              child: Image.asset(
                'images/ad.png',
                height: 120.0,
                width: double.maxFinite,
                fit: BoxFit.cover,
              ),
            )
          ],
        ),
      ),
    );
  }
}
