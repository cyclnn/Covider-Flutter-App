import 'package:flutter/material.dart';
import 'Tugas/Tugas12/Telegram.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Telegram',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: Telegram(),
    );
  }
}
