import 'package:flutter/material.dart';
import 'Tugas/Tugas12/Telegram.dart';
import 'Tugas/Tugas13/HomeScreen.dart';
import 'Tugas/Tugas13/LoginScreen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Telegram',
      theme: ThemeData(primarySwatch: Colors.green),
      home: Loginpage(),
    );
  }
}
