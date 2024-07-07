// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';

class SplashScreen extends StatelessWidget {
   SplashScreen({Key? key}) : super(key: key);
  List myColors = [
    Colors.red, Colors.blue
  ];
  @override
  Widget build(BuildContext context) {
    return PageView.builder(
      itemCount: 2,
      itemBuilder: (context, i) {
        return Container(
          width: double.maxFinite,
          height: double.maxFinite,
          color: myColors[i],
        );
      },
    );
  }
}
