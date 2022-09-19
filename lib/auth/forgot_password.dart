import 'dart:ffi';

import 'package:flutter/material.dart';

void main() {
  runApp(ForgotPassword());
}

class ForgotPassword extends StatelessWidget {
  const ForgotPassword({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Icon(
          Icons.arrow_back_ios,
          size: 20,
        ),
      ),
    );
  }
}
