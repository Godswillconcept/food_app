// ignore_for_file: prefer_const_constructors, library_private_types_in_public_api

import 'dart:async';

import 'package:flutter/material.dart';
import 'package:food_app/constant.dart';

class IntroductionScreen extends StatefulWidget {
  const IntroductionScreen({Key? key}) : super(key: key);

  @override
  _IntroductionScreenState createState() => _IntroductionScreenState();
}

class _IntroductionScreenState extends State<IntroductionScreen> {
  final PageController pageController = PageController(initialPage: 0);
  int activePage = 0;
  List<Map<String, dynamic>> pageInfo = [
    {
      "image": 'images/chicken-leg.png',
      "header": 'Delicious Food',
      "body":
          'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam porttitor maximus tellus, ac egestas'
    },
    {
      "image": 'images/fast-delivery.png',
      "header": 'Fast Shipping',
      "body":
          'Aliquam vulputate id sapien eu porta. Donec et velit placerat, tincidunt est ut, tincidunt.'
    },
    {
      "image": 'images/award.png',
      "header": 'Certificate',
      "body":
          'Aenean est arcu, rhoncus sed massa eget, aliquam iaculis purus. Nullam quis neque felis.'
    },
    {
      "image": 'images/credit-card.png',
      "header": 'Payment Online',
      "body":
          'Nam vel viverra diam. Orci varius natoque penatibus et magnis dis parturient montes, nascetur.'
    },
  ];

  @override
  void initState() {
    super.initState();
    navigateToWelcomeScreen();
  }

  void navigateToWelcomeScreen() {
    Future.delayed(Duration(seconds: 2 * pageInfo.length), () {
      Navigator.pushNamed(context, '/welcome');
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView.builder(
        controller: pageController,
        onPageChanged: (value) {
          setState(() {
            activePage = value;
          });
        },
        itemCount: pageInfo.length,
        itemBuilder: (BuildContext context, int index) {
          return Container(
            width: double.maxFinite,
            height: double.maxFinite,
            padding: EdgeInsets.symmetric(horizontal: 25.0, vertical: 20.0),
            color: mainColor,
            child: Column(
              children: [
                Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 100.0),
                      child: Center(
                        child: Image.asset(
                          pageInfo[index]['image'],
                          width: 200,
                          height: 200,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 20.0),
                      child: Text(
                        pageInfo[index]['header'],
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 32,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 330,
                      child: Text(
                        pageInfo[index]['body'],
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                          fontWeight: FontWeight.w300,
                        ),
                      ),
                    ),
                  ],
                ),
                Spacer(),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: List.generate(
                    pageInfo.length,
                    (index) {
                      return InkWell(
                        onTap: () {
                          pageController.animateToPage(
                            index,
                            duration: Duration(milliseconds: 300),
                            curve: Curves.bounceInOut,
                          );
                        },
                        child: Container(
                          margin: EdgeInsets.only(right: 5),
                          width: (activePage == index) ? 10 : 5,
                          height: 5,
                          decoration: BoxDecoration(
                            color: (activePage == index)
                                ? Colors.grey.shade700
                                : auxColor,
                            borderRadius: BorderRadius.circular(12),
                          ),
                        ),
                      );
                    },
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
