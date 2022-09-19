import 'package:flutter/material.dart';

class ForgotPassword extends StatelessWidget {
  const ForgotPassword({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Icon(
            Icons.arrow_back,
            color: Colors.grey,
          ),
          elevation: 0,
          backgroundColor: Colors.white,
        ),
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
            child: Column(
          children: [],
        )),
      ),
    );
  }
}
