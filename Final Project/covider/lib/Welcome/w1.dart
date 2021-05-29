import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';
import 'package:flutter_statusbarcolor/flutter_statusbarcolor.dart';
import 'package:covider/Auth/Loginpage.dart';



class Welcome1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    FlutterStatusbarcolor.setStatusBarColor(Color.fromRGBO(71, 63, 151, 1));
    return Scaffold(
      backgroundColor: Color.fromRGBO(71, 63, 151, 1),
      body: Padding(
        padding: const EdgeInsets.only(top: 100),
        child: Column(
          children: [
            SizedBox(height: 150),
            Center(
              child: Text(
                'WELCOME',
                style: TextStyle(
                    fontSize: 50,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'Pattaya',
                    letterSpacing: 8),
              ),
            ),
            SizedBox(height: 100),
            Center(
              child: Text(
                'Aplikasi Data Covid-19 menggunakan API Percobaan Irfan Akbari Habibi ',
                style: TextStyle(
                    color: Colors.grey,
                    fontFamily: 'ArchivoNarrow',
                    fontSize: 20),
                textAlign: TextAlign.center,
              ),
            ),
            SizedBox(
              height: 100,
            ),
            Center(
              child: IconButton(
                iconSize: 50,
                icon: Icon(
                  Icons.arrow_forward_sharp,
                  color: Colors.white,
                ),
                onPressed: () {
                  Navigator.pushReplacement(
                      context,
                      PageTransition(
                          type: PageTransitionType.leftToRight,
                          child: Welcome2()));
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}

class Welcome2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    FlutterStatusbarcolor.setStatusBarColor(Color.fromRGBO(122, 63, 151, 1));
    return Scaffold(
      backgroundColor: Color.fromRGBO(122, 63, 151, 1),
      body: Padding(
        padding: const EdgeInsets.only(top: 100),
        child: Column(
          children: [
            SizedBox(height: 150),
            Center(
              child: Text(
                'About App',
                style: TextStyle(
                    fontSize: 50,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'Pattaya',
                    letterSpacing: 8),
              ),
            ),
            SizedBox(height: 60),
            Center(
              child: Padding(
                padding: const EdgeInsets.only(bottom: 5),
                child: Text(
                  'Struktur Aplikasi :',
                  style: TextStyle(
                      color: Colors.grey,
                      fontFamily: 'ArchivoNarrow',
                      fontSize: 20),
                  textAlign: TextAlign.center,
                ),
              ),
            ),
            Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(bottom: 5),
                  child: Text(
                    '1. Framework Flutter',
                    style: TextStyle(
                        color: Colors.grey,
                        fontFamily: 'ArchivoNarrow',
                        fontSize: 20),
                    textAlign: TextAlign.center,
                  ),
                ),
              ],
            ),
            Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(bottom: 5),
                  child: Text(
                    '2. Bahasa Pemrograman Dart',
                    style: TextStyle(
                        color: Colors.grey,
                        fontFamily: 'ArchivoNarrow',
                        fontSize: 20),
                    textAlign: TextAlign.center,
                  ),
                ),
              ],
            ),
            Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(bottom: 5),
                  child: Text(
                    '3. Autentikasi Menggunakan Firebase',
                    style: TextStyle(
                        color: Colors.grey,
                        fontFamily: 'ArchivoNarrow',
                        fontSize: 20),
                    textAlign: TextAlign.center,
                  ),
                ),
              ],
            ),
            Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(bottom: 5),
                  child: Text(
                    '4. Sumber Data API KawalCorona',
                    style: TextStyle(
                        color: Colors.grey,
                        fontFamily: 'ArchivoNarrow',
                        fontSize: 20),
                    textAlign: TextAlign.center,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 100,
            ),
            Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  IconButton(
                    iconSize: 50,
                    icon: Icon(
                      Icons.arrow_back_sharp,
                      color: Colors.white,
                    ),
                    onPressed: () {
                      Navigator.of(context).pushReplacement(
                          MaterialPageRoute(builder: (context) => Welcome1()));
                    },
                  ),
                  IconButton(
                    iconSize: 50,
                    icon: Icon(
                      Icons.arrow_forward_sharp,
                      color: Colors.white,
                    ),
                    onPressed: () {
                      Navigator.of(context).pushReplacement(MaterialPageRoute(
                          builder: (context) => LoginScreen()));
                    },
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
