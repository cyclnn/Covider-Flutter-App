import 'package:flutter/material.dart';

import 'Tugas/Tugas14/get_data.dart';

// import 'Tugas/Auth/HomeScreen.dart';
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Telegram',
      debugShowCheckedModeBanner: false,
      home: GetDataApi(),
    );
  }
}
