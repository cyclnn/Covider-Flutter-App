import 'package:covider/Auth/AuthServices.dart';
import 'package:flutter/material.dart';
import 'package:flutter_statusbarcolor/flutter_statusbarcolor.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'Loginpage.dart';

class Forgot extends StatelessWidget {
  final FirebaseAuth auth = FirebaseAuth.instance;
  final TextEditingController _email = TextEditingController();

  @override
  Widget build(BuildContext context) {
    FlutterStatusbarcolor.setStatusBarColor(Color.fromRGBO(71, 63, 151, 1));
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 100,
            ),
            Center(
              child: Text.rich(
                TextSpan(
                  text: 'Lupa Password',
                  style: TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 35,
                      color: Color.fromRGBO(84, 197, 248, 1)),
                ),
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Center(
                child: Image.asset(
              'assets/img/ikon.png',
              width: 120,
            )),
            SizedBox(height: 30),
            TextField(
              controller: _email,
              decoration: InputDecoration(
                  prefixIcon: Icon(Icons.email),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10)),
                  hintText: 'Email'),
            ),
            SizedBox(
              height: 40,
            ),
            Center(
              child: SizedBox(
                width: 400,
                height: 50,
                child: new RaisedButton(
                    textColor: Colors.white,
                    color: Color.fromRGBO(84, 197, 248, 1),
                    child: Text(
                      'Reset Password',
                      style: TextStyle(fontSize: 18),
                    ),
                    onPressed: () {
                      AuthServices.forgotPass(_email.text);
                    }),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
