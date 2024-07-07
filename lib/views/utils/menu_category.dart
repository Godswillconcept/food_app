// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
class MenuCategory extends StatelessWidget {
   MenuCategory({
    super.key,
  });

  List<Map<String, dynamic>> iconData = [
    {"icon": 'images/drink.png', "data": 'Drinks'},
    {"icon": 'images/chicken-leg.png', "data": 'Food'},
    {"icon": 'images/cupcake.png', "data": 'Cake'},
    {"icon": 'images/nachos.png', "data": 'Snacks'},
    {"icon": 'images/chinese-food.png', "data": 'Noodles'},
    {"icon": 'images/pizza.png', "data": 'Pizza'},
  ];

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 78,
      child: ListView.builder(
        padding: const EdgeInsets.only(left: 20.0),
        scrollDirection: Axis.horizontal,
        itemCount: iconData.length,
        itemBuilder: (BuildContext context, int index) {
          return Column(
            // crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width: 60,
                height: 60,
                padding: const EdgeInsets.all(12),
                decoration: BoxDecoration(
                  color: Colors.grey.shade300,
                  borderRadius: BorderRadius.circular(16),
                ),
                margin: const EdgeInsets.only(right: 25),
                child: Image.asset(iconData[index]['icon']),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 22),
                child: Text(
                  iconData[index]['data'],
                  style: const TextStyle(fontWeight: FontWeight.bold),
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}
