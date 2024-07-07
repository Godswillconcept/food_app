// ignore_for_file: library_private_types_in_public_api, prefer_const_constructors, prefer_const_literals_to_create_immutables, avoid_unnecessary_containers

import 'package:flutter/material.dart';
import 'package:food_app/views/quiz_app_screen.dart';
import 'package:food_app/views/movie_screen.dart';

class OrderScreen extends StatefulWidget {
  const OrderScreen({Key? key}) : super(key: key);

  @override
  _OrderScreenState createState() => _OrderScreenState();
}

class _OrderScreenState extends State<OrderScreen> {
  int _index = 0;

  List quotes = [
    'Life isn\'t about getting and having, it\'s about giving and being.',
    'Whatever the mind of a man can conceive and believe, it can achieve.',
    'Strive not to be a success, but rather to be of value.',
    'You miss 100% of the shots you don\'t take.',
    'The most difficult thing is the decision to act, the rest is merely tenacity.',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
              width: 300,
              height: 200,
              margin: EdgeInsets.all(30.0),
              padding: EdgeInsets.all(30.0),
              decoration: BoxDecoration(
                color: Colors.purpleAccent,
                borderRadius: BorderRadius.circular(14.5),
              ),
              child: Center(
                child: Text(
                  quotes[_index % quotes.length],
                  style: TextStyle(
                    fontSize: 20.0,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
            Divider(
              thickness: 1.3,
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20.0, bottom: 70.0),
              child: ElevatedButton.icon(
                style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.pink.shade300),
                onPressed: _showQuote,
                icon: Icon(Icons.wb_sunny),
                label: Text(
                  'Inspire Me!',
                  style: TextStyle(
                    color: Colors.purple.shade600,
                    fontSize: 18.8,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            UserAccountsDrawerHeader(
              accountEmail: Text("Olatunjiabass01@gmail.com"),
              accountName: Text("Olatunji Abass Adewale"),
              currentAccountPicture: CircleAvatar(
                child: Text("A"),
              ),
            ),
            ListTile(
              leading: Icon(Icons.search),
              title: Text("Quiz Page"),
              // textColor: Colors.white,
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => QuizAppScreen(),
                  ),
                );
              },
            ),
            ListTile(
              leading: Icon(Icons.image),
              title: Text("Movie Page"),
              // textColor: Colors.white,
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => MovieScreen(),
                  ),
                );
              },
            ),
      
    
           
          ],
        ),
      ),
    );
  }

  void _showQuote() {
    setState(() {
      _index += 1;
    });
  }
}
