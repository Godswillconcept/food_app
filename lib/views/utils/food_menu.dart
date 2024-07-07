import 'package:flutter/material.dart';

import 'app_text.dart';

class FoodMenu extends StatelessWidget {
  FoodMenu({
    super.key,
  });

  List<Map<String, dynamic>> foodMenu = [
    {"image": 'images/burgers/01.jpg', "data": 'Burgers'},
    {"image": 'images/pizza/01.jpg', "data": 'Pizza'},
    {"image": 'images/bbq/01.jpg', "data": 'BBQ'},
    {"image": 'images/fruits/01.jpg', "data": 'Fruit'},
    {"image": 'images/noodles/01.jpg', "data": 'Noodles'},
    {"image": 'images/salad/01.jpg', "data": 'Salad'},
  ];

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20.0),
      child: GridView.count(
        shrinkWrap: true,
        crossAxisCount: 3,
        mainAxisSpacing: 20,
        crossAxisSpacing: 20,
        physics: const NeverScrollableScrollPhysics(),
        children: List.generate(
          foodMenu.length,
          (index) => Stack(
            children: [
              Container(
                decoration: BoxDecoration(
                  color: Colors.amber,
                  borderRadius: BorderRadius.circular(20.0),
                  image: DecorationImage(
                    image: AssetImage(foodMenu[index]['image']),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Container(
                width: double.maxFinite,
                height: double.maxFinite,
                decoration: BoxDecoration(
                  color: Colors.black.withOpacity(0.4),
                  borderRadius: BorderRadius.circular(20.0),
                ),
                padding: const EdgeInsets.all(10.0),
                child: AppText(
                  data: foodMenu[index]['data'],
                  color: Colors.white,
                  fsize: 18.0,
                  fweight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
