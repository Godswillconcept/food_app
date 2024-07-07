// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, library_private_types_in_public_api

import 'package:flutter/material.dart';

class CompletePasswordPage extends StatefulWidget {
  const CompletePasswordPage({Key? key}) : super(key: key);

  @override
  _CompletePasswordPageState createState() => _CompletePasswordPageState();
}

class _CompletePasswordPageState extends State<CompletePasswordPage> {
  final GlobalKey _formKey = GlobalKey<FormState>();
final TextEditingController otpController = TextEditingController();
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
                  "Forgot\nPassword",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 32.0,
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(bottom: 20.0),
                child: Text('An OTP code sent to your phone. Enter it here:'),
              ),
              Padding(
                padding: EdgeInsets.only(bottom: 20.0, left: 10.0),
                child: TextFormField(
                  obscureText: true,
                  controller: otpController,
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
                    hintText: "Enter OTP Code",
                    hintStyle: TextStyle(color: Colors.grey.shade700),
                    labelText: "Enter OTP Code",
                    labelStyle: TextStyle(color: Colors.grey.shade700),
                  ),
                ),
              ),
              InkWell(
                onTap: () => debugPrint("Clicked"),
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
                    "Next",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 22.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
             
            ],
          ),
        ),
      ),
    );
  }
}
