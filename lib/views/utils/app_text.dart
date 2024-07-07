import 'package:flutter/material.dart';

class AppText extends StatelessWidget {
  const AppText({
    Key? key,
    required this.data,
    required this.color,
    required this.fsize,
    required this.fweight,
  }) : super(key: key);
  final String data;
  final Color color;
  final double fsize;
  final FontWeight fweight;

  @override
  Widget build(BuildContext context) {
    return Text(
      data,
      style: TextStyle(
        color: color,
        fontSize: fsize,
        fontWeight: fweight,
      ),
    );
  }
}
