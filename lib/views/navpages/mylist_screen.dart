// ignore_for_file: library_private_types_in_public_api, prefer_const_constructors, prefer_const_literals_to_create_immutables, must_be_immutable

import 'package:flutter/material.dart';
import 'package:food_app/constant.dart';

import '../utils/app_text.dart';

class MylistScreen extends StatelessWidget {
  MylistScreen({super.key});

  List<Map<String, dynamic>> myList = [
    {"image": 'images/bbq/01.jpg', "data": 'BBQ', 'price': "\$7.99"},
    {"image": 'images/chicken/01.jpg', "data": 'Chicken', 'price': "\$7.99"},
    {"image": 'images/fruits/01.jpg', "data": 'Fruit', 'price': "\$7.99"},
    {"image": 'images/noodles/01.jpg', "data": 'Noodles', 'price': "\$7.99"},
    {"image": 'images/pizza/01.jpg', "data": 'Pizza', 'price': "\$7.99"},
    {"image": 'images/salad/01.jpg', "data": 'Salad', 'price': "\$7.99"},
  ];

  final TextEditingController searchController = TextEditingController();

  final GlobalKey _formKey = GlobalKey<FormState>();

  bool isObsecure = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 40.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconButton(
                    onPressed: () {},
                    icon: Icon(Icons.arrow_back_ios),
                  ),
                  Expanded(
                    child: Form(
                      key: _formKey,
                      child: TextFormField(
                        controller: searchController,
                        textInputAction: TextInputAction.done,
                        onEditingComplete: () {
                          debugPrint(searchController.text.trim());
                        },
                        decoration: InputDecoration(
                          hintText: "Hamburger",
                          hintStyle: const TextStyle(color: Colors.grey),
                          prefixIcon: const Icon(Icons.search),
                          prefixIconColor: Colors.grey,
                          suffixIcon: Icon(Icons.clear),
                          suffixIconColor: Colors.grey,
                          filled: true,
                          fillColor: Colors.grey.shade300,
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20.0),
                            borderSide: BorderSide.none,
                          ),
                        ),
                      ),
                    ),
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: Icon(Icons.filter_list),
                  )
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 15.0, left: 20.0, bottom: 20.0),
              child: Row(
                children: [
                  AppText(
                    data: "Near me",
                    color: Colors.black,
                    fsize: 30,
                    fweight: FontWeight.bold,
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20.0, bottom: 20.0),
              child: Row(
                children: [
                  Container(
                    width: 100,
                    height: 100,
                    margin: const EdgeInsets.only(right: 20.0),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12.0),
                      image: const DecorationImage(
                        image: AssetImage("images/hamburger.jpg"),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  Expanded(
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        const Text(
                          'Pizza Lover Compoany',
                          style: TextStyle(
                            fontSize: 22.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const SizedBox(
                          height: 5.0,
                        ),
                        const Row(
                          children: [
                            Icon(Icons.pin_drop_outlined),
                            Text('78th Street, 88 W 21th St, NY'),
                          ],
                        ),
                        const SizedBox(
                          height: 5.0,
                        ),
                        const Row(
                          children: [
                            Icon(Icons.timer_outlined),
                            Text('4 min - 1.5 km'),
                          ],
                        ),
                        Row(
                          children: [
                            Row(
                              children: List.generate(
                                5,
                                (index) => const Icon(
                                  Icons.star,
                                  color: Colors.amber,
                                ),
                              ),
                            ),
                            const Text("(4.9)"),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.only(
                top: 20.0,
                left: 20.0,
                bottom: 20.0,
              ),
              height: 170,
              child: ListView.separated(
                shrinkWrap: true,
                scrollDirection: Axis.horizontal,
                // physics: NeverScrollableScrollPhysics(),
                itemCount: myList.length,
                itemBuilder: (context, index) {
                  return Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        width: 90,
                        height: 90,
                        padding: const EdgeInsets.all(12),
                        margin: const EdgeInsets.only(right: 20),
                        decoration: BoxDecoration(
                          color: Colors.red,
                          borderRadius: BorderRadius.circular(16.0),
                          image: DecorationImage(
                            image: AssetImage(myList[index]['image']),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      AppText(
                          data: myList[index]['data'],
                          color: Colors.black,
                          fsize: 16,
                          fweight: FontWeight.w500),
                      AppText(
                          data: myList[index]['price'],
                          color: mainColor,
                          fsize: 16,
                          fweight: FontWeight.w500),
                    ],
                  );
                }, separatorBuilder: (BuildContext context, int index) {  return SizedBox(width: 5);  },
              ),
            ),
         
            Padding(
              padding: const EdgeInsets.only(left: 20.0, bottom: 20.0),
              child: Row(
                children: [
                  Container(
                    width: 100,
                    height: 100,
                    margin: const EdgeInsets.only(right: 20.0),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12.0),
                      image: const DecorationImage(
                        image: AssetImage("images/hamburger.jpg"),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  Expanded(
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        const Text(
                          'Pizza Lover Compoany',
                          style: TextStyle(
                            fontSize: 22.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const SizedBox(
                          height: 5.0,
                        ),
                        const Row(
                          children: [
                            Icon(Icons.pin_drop_outlined),
                            Text('78th Street, 88 W 21th St, NY'),
                          ],
                        ),
                        const SizedBox(
                          height: 5.0,
                        ),
                        const Row(
                          children: [
                            Icon(Icons.timer_outlined),
                            Text('4 min - 1.5 km'),
                          ],
                        ),
                        Row(
                          children: [
                            Row(
                              children: List.generate(
                                5,
                                (index) => const Icon(
                                  Icons.star,
                                  color: Colors.amber,
                                ),
                              ),
                            ),
                            const Text("(4.9)"),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.only(
                top: 20.0,
                left: 20.0,
                bottom: 20.0,
              ),
              height: 170,
              child: ListView.separated(
                shrinkWrap: true,
                scrollDirection: Axis.horizontal,
                // physics: NeverScrollableScrollPhysics(),
                itemCount: myList.length,
                itemBuilder: (context, index) {
                  return Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        width: 90,
                        height: 90,
                        padding: const EdgeInsets.all(12),
                        margin: const EdgeInsets.only(right: 20),
                        decoration: BoxDecoration(
                          color: Colors.red,
                          borderRadius: BorderRadius.circular(16.0),
                          image: DecorationImage(
                            image: AssetImage(myList[index]['image']),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      AppText(
                          data: myList[index]['data'],
                          color: Colors.black,
                          fsize: 16,
                          fweight: FontWeight.w500),
                      AppText(
                          data: myList[index]['price'],
                          color: mainColor,
                          fsize: 16,
                          fweight: FontWeight.w500),
                    ],
                  );
                }, separatorBuilder: (BuildContext context, int index) { return SizedBox(width: 5); },
              ),
            ),
         
            Padding(
              padding: const EdgeInsets.only(left: 20.0, bottom: 20.0),
              child: Row(
                children: [
                  Container(
                    width: 100,
                    height: 100,
                    margin: const EdgeInsets.only(right: 20.0),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12.0),
                      image: const DecorationImage(
                        image: AssetImage("images/hamburger.jpg"),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  Expanded(
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        const Text(
                          'Pizza Lover Compoany',
                          style: TextStyle(
                            fontSize: 22.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const SizedBox(
                          height: 5.0,
                        ),
                        const Row(
                          children: [
                            Icon(Icons.pin_drop_outlined),
                            Text('78th Street, 88 W 21th St, NY'),
                          ],
                        ),
                        const SizedBox(
                          height: 5.0,
                        ),
                        const Row(
                          children: [
                            Icon(Icons.timer_outlined),
                            Text('4 min - 1.5 km'),
                          ],
                        ),
                        Row(
                          children: [
                            Row(
                              children: List.generate(
                                5,
                                (index) => const Icon(
                                  Icons.star,
                                  color: Colors.amber,
                                ),
                              ),
                            ),
                            const Text("(4.9)"),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.only(
                top: 20.0,
                left: 20.0,
                bottom: 20.0,
              ),
              height: 170,
              child: ListView.separated(
                shrinkWrap: true,
                scrollDirection: Axis.horizontal,
                // physics: NeverScrollableScrollPhysics(),
                itemCount: myList.length,
                itemBuilder: (context, index) {
                  return Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        width: 90,
                        height: 90,
                        padding: const EdgeInsets.all(12),
                        margin: const EdgeInsets.only(right: 20),
                        decoration: BoxDecoration(
                          color: Colors.red,
                          borderRadius: BorderRadius.circular(16.0),
                          image: DecorationImage(
                            image: AssetImage(myList[index]['image']),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      AppText(
                          data: myList[index]['data'],
                          color: Colors.black,
                          fsize: 16,
                          fweight: FontWeight.w500),
                      AppText(
                          data: myList[index]['price'],
                          color: mainColor,
                          fsize: 16,
                          fweight: FontWeight.w500),
                    ],
                  );
                }, separatorBuilder: (BuildContext context, int index) {  return SizedBox(width: 5);  },
              ),
            ),
         
          ],
        ),
      ),
    );
  }
}
