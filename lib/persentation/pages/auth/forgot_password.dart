import 'package:flutter/material.dart';
import 'package:kabar/persentation/pages/auth/login.dart';

class ForgotPassword extends StatelessWidget {
  const ForgotPassword({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
            child: Column(
          children: [
            Container(
              alignment: Alignment.topLeft,
              margin: EdgeInsets.only(left: 10, top: 50),
              child: Icon(
                Icons.arrow_back,
                size: 30,
                color: Colors.black,
              ),
            ),
            Container(
              alignment: Alignment.topLeft,
              margin: EdgeInsets.only(left: 15, top: 20),
              child: Text(
                "Forgot\nPassword ?",
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 30,
                    fontWeight: FontWeight.w900),
              ),
            ),
            Container(
              alignment: Alignment.topLeft,
              margin: EdgeInsets.only(left: 15, top: 20),
              child: Text(
                "Dont't worry! it happens. Please enter the address associated with your account.",
                style: TextStyle(color: Colors.black),
              ),
            )
          ],
        )),
      ),
    );
  }
}
