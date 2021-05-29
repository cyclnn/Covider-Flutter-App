import 'package:covider/Home/Homescreen.dart';
import 'package:covider/Menu/Statistik.dart';
import 'package:covider/Menu/akun_setting.dart';
import 'package:covider/Menu/berita/berita.dart';
import 'package:flutter/material.dart';
import 'package:flutter_statusbarcolor/flutter_statusbarcolor.dart';
import 'package:firebase_auth/firebase_auth.dart';

FirebaseAuth auth = FirebaseAuth.instance;

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int navIndex = 0;
  void selectNavBot(int index) {
    setState(() {
      navIndex = index;
    });
  }

  final List<Widget> tab = [
    HomeScreen2(),
    Stat(),
    NewsListPage(),
    AkunSetting(),
  ];

  @override
  Widget build(BuildContext context) {
    FlutterStatusbarcolor.setStatusBarColor(Color.fromRGBO(71, 63, 151, 1));

    return new Scaffold(
      resizeToAvoidBottomInset: false,
      body: tab[navIndex],
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        backgroundColor: Color.fromRGBO(71, 63, 151, 1),
        unselectedItemColor: Colors.white,
        selectedItemColor: Colors.yellowAccent,
        currentIndex: navIndex,
        onTap: selectNavBot,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(
              icon: Icon(Icons.bar_chart), label: 'Statistik'),
          BottomNavigationBarItem(
              icon: Icon(Icons.my_library_books), label: 'Berita'),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Akun'),
        ],
      ),
    );
  }
}
