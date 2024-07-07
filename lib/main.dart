// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:food_app/views/auth/complete_password_page.dart';
import 'package:food_app/views/auth/forget_password_page.dart';
import 'package:food_app/views/auth/start_screen.dart';
import 'package:food_app/views/auth/welcome_page.dart';
import 'package:food_app/views/splash_screen.dart';

import 'views/auth/signin_page.dart';
import 'views/auth/signup_page.dart';
import 'views/introduction_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      debugShowCheckedModeBanner: false,
      home:  SplashScreen(),
      routes: {
        '/welcome': (context) => WelcomePage(),
        '/signin': (context) => SigninPage(),
        '/signup': (context) => SignupPage(),
        '/forgot-pwd': (context) => ForgetPasswordPage(),
        '/reset-pwd': (context) => CompletePasswordPage(),
        '/start-screen': (context) => StartScreen(),
      },
    );
  }
}
