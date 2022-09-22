import 'package:flutter/material.dart';
import 'package:kabar/auth/login.dart' show LoginApp;
import 'package:kabar/auth/splashscreen.dart';
import 'package:kabar/menu/menu.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Menu(),
    );
  }
}
