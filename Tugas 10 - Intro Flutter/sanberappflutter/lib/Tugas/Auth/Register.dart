import 'package:flutter/material.dart';
import 'package:flutter_statusbarcolor/flutter_statusbarcolor.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'LoginScreen.dart';

class Register extends StatefulWidget {
  @override
  _RegisterState createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  final FirebaseAuth _firebaseAuth = FirebaseAuth.instance;

  final TextEditingController _email = TextEditingController();
  final TextEditingController _password = TextEditingController();
  @override
  Widget build(BuildContext context) {
    FlutterStatusbarcolor.setStatusBarColor(Color.fromRGBO(84, 197, 248, 1));
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
                  text: 'Daftar Akun',
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
              'assets/img/flutter.png',
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
            SizedBox(height: 30),
            TextField(
              obscureText: true,
              controller: _password,
              decoration: InputDecoration(
                  prefixIcon: Icon(Icons.lock),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10)),
                  hintText: 'Password'),
            ),
            SizedBox(height: 30),
            Center(
              child: SizedBox(
                width: 400,
                height: 50,
                child: new RaisedButton(
                    textColor: Colors.white,
                    color: Color.fromRGBO(84, 197, 248, 1),
                    child: Text(
                      'Daftar',
                      style: TextStyle(fontSize: 18),
                    ),
                    onPressed: () async {
                      try {
                        await _firebaseAuth
                            .createUserWithEmailAndPassword(
                                email: _email.text, password: _password.text)
                            .then((value) => Navigator.of(context)
                                .pushReplacement(MaterialPageRoute(
                                    builder: (context) => Loginpage())));
                      } catch (e) {
                        print(e.toString());
                      }
                    }),
              ),
            ),
            SizedBox(
              height: 20,
            ),
          ],
        ),
      ),
    );
  }
}
