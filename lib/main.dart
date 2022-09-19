import 'package:flutter/material.dart';
import 'package:kabar/auth/login.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  bool _isObscure = true;
  bool isChecked = false;

  @override
  Widget build(BuildContext context) {
    return LoginApp();
  }
}
