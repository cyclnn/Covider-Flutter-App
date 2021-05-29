import 'package:flutter/material.dart';
import 'package:flutter_statusbarcolor/flutter_statusbarcolor.dart';
import 'package:sanberappflutter/Tugas/Auth/HomeScreen.dart';
import 'Register.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'ForgotPass.dart';

class Loginpage extends StatefulWidget {
  @override
  _LoginpageState createState() => _LoginpageState();
}

class _LoginpageState extends State<Loginpage> {
  final FirebaseAuth _auth = FirebaseAuth.instance;
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
                  text: 'Sanber Flutter',
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
              controller: _password,
              obscureText: true,
              decoration: InputDecoration(
                  prefixIcon: Icon(Icons.lock),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10)),
                  hintText: 'Password'),
            ),
            SizedBox(height: 30),
            Center(
              child: GestureDetector(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Forgotpass()));
                },
                child: Text('Forgot Password?',
                    style: TextStyle(
                        color: Color.fromRGBO(84, 197, 248, 1), fontSize: 18)),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Center(
              child: SizedBox(
                width: 400,
                height: 50,
                child: new RaisedButton(
                  textColor: Colors.white,
                  color: Color.fromRGBO(84, 197, 248, 1),
                  child: Text(
                    'Login',
                    style: TextStyle(fontSize: 18),
                  ),
                  onPressed: () async {
                    await _auth
                        .signInWithEmailAndPassword(
                            email: _email.text, password: _password.text)
                        .then((value) => Navigator.of(context).pushReplacement(
                            MaterialPageRoute(
                                builder: (context) => Homepage())));
                  },
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              children: [
                Column(
                  children: [
                    Text(
                      'Does not have account?',
                      style: TextStyle(color: Colors.black, fontSize: 18),
                    )
                  ],
                ),
                Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 100),
                      child: GestureDetector(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => Register()));
                        },
                        child: Text('Register',
                            style: TextStyle(
                                color: Color.fromRGBO(84, 197, 248, 1),
                                fontWeight: FontWeight.bold,
                                fontSize: 18)),
                      ),
                    )
                  ],
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
