// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, library_private_types_in_public_api

import 'package:flutter/material.dart';
import 'package:food_app/views/utils/app_text.dart';

class SigninPage extends StatefulWidget {
  const SigninPage({Key? key}) : super(key: key);

  @override
  _SigninPageState createState() => _SigninPageState();
}

class _SigninPageState extends State<SigninPage> {
  final TextEditingController usernameController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final GlobalKey _formKey = GlobalKey<FormState>();
  bool isObsecure = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.symmetric(vertical: 30.0, horizontal: 20.0),
        width: double.maxFinite,
        height: double.maxFinite,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("images/background.png"),
            fit: BoxFit.cover,
          ),
        ),
        child: Form(
          key: _formKey,
          child: ListView(
            children: <Widget>[
              Align(
                alignment: Alignment.topLeft,
                child: IconButton(
                  onPressed: () => Navigator.of(context).pop(),
                  icon: Icon(Icons.arrow_back_ios),
                ),
              ),
              Container(
                alignment: Alignment.topLeft,
                padding: EdgeInsets.only(left: 10.0, top: 100.0, bottom: 30.0),
                child: Text(
                  "Sign In",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 28.0,
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(bottom: 20.0),
                child: TextFormField(
                  controller: usernameController,
                  textInputAction: TextInputAction.next,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter some text';
                    }
                    return null;
                  },
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Color(0xfff6f4f5),
                    prefixIcon: Icon(Icons.person_outline),
                    prefixIconColor: Colors.grey.shade700,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20.0),
                      borderSide: BorderSide(
                        color: Color(0xfff6f4f5),
                      ),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20.0),
                      borderSide: BorderSide(
                        color: Colors.grey.shade700,
                        width: 2.0,
                      ),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20.0),
                      borderSide: BorderSide(
                        color: Color(0xfff6f4f5),
                      ),
                    ),
                    hintText: "Username",
                    hintStyle: TextStyle(color: Colors.grey.shade700),
                    labelText: "Username",
                    labelStyle: TextStyle(color: Colors.grey.shade700),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(bottom: 20.0),
                child: TextFormField(
                  obscureText: isObsecure,
                  controller: passwordController,
                  textInputAction: TextInputAction.done,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter some text';
                    }
                    return null;
                  },
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Color(0xfff6f4f5),
                    prefixIcon: Icon(Icons.lock_outline),
                    prefixIconColor: Colors.grey.shade700,
                    suffixIcon: IconButton(
                      onPressed: () {
                        setState(() {
                          isObsecure = !isObsecure;
                        });
                      },
                      icon: Icon(
                          isObsecure ? Icons.visibility_off : Icons.visibility),
                    ),
                    suffixIconColor: Colors.grey.shade700,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20.0),
                      borderSide: BorderSide(
                        color: Color(0xfff6f4f5),
                      ),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20.0),
                      borderSide: BorderSide(
                        color: Colors.grey.shade700,
                        width: 2.0,
                      ),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20.0),
                      borderSide: BorderSide(
                        color: Color(0xfff6f4f5),
                      ),
                    ),
                    hintText: "Password",
                    hintStyle: TextStyle(color: Colors.grey.shade700),
                    labelText: "Password",
                    labelStyle: TextStyle(color: Colors.grey.shade700),
                  ),
                ),
              ),
              InkWell(
                onTap: () => Navigator.pushNamed(context, '/start-screen'),
                child: Container(
                  width: double.maxFinite,
                  alignment: Alignment.center,
                  padding: EdgeInsets.all(12.0),
                  margin: EdgeInsets.only(bottom: 20.0, top: 20.0),
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
              Container(
                alignment: Alignment.centerRight,
                child: TextButton(
                  onPressed: () => Navigator.pushNamed(context, "/forgot-pwd"),
                  child: AppText(data: "Forgot password?", color: Colors.grey.shade700, fsize: 14.0, fweight: FontWeight.bold),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
