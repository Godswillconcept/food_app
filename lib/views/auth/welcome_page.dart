// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, library_private_types_in_public_api

import 'package:flutter/material.dart';

class WelcomePage extends StatefulWidget {
  const WelcomePage({Key? key}) : super(key: key);

  @override
  _WelcomePageState createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.maxFinite,
        height: double.maxFinite,
        padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 50.0),
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("images/background.png"),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          children: <Widget>[
            Container(
              padding: EdgeInsets.all(20),
              margin: EdgeInsets.only(bottom: 30),
              width: double.maxFinite,
              height: 350,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                image: DecorationImage(
                  image: AssetImage("images/hamburger.jpg"),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            InkWell(
              onTap: () =>Navigator.pushNamed(context, "/signin"),
              child: Container(
                width: double.maxFinite,
                alignment: Alignment.center,
                padding: EdgeInsets.all(12.0),
                margin: EdgeInsets.only(bottom: 20.0),
                decoration: BoxDecoration(
                  color: Color(0xfff55b03),
                  borderRadius: BorderRadius.circular(20.0),
                  
                ),
                child: Text(
                  "Sign In",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 22.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            InkWell(
              onTap: () => Navigator.pushNamed(context, "/signup"),
              child: Container(
                width: double.maxFinite,
                alignment: Alignment.center,
                padding: EdgeInsets.all(12.0),
                decoration: BoxDecoration(
                  color: Color(0xfff6f4f5),
                  borderRadius: BorderRadius.circular(20.0),
                  
                ),
                child: Text(
                  "Sign Up",
                  style: TextStyle(
                    fontSize: 22.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
