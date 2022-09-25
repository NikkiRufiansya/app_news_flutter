import 'package:flutter/material.dart';
import 'package:kabar/persentation/pages/auth/login.dart' show LoginApp;
import 'package:kabar/persentation/pages/auth/splashscreen.dart';
import 'package:kabar/persentation/pages/menu.dart';

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
