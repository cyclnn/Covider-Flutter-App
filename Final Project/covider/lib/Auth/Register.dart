import 'package:covider/Home/Homescreen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_statusbarcolor/flutter_statusbarcolor.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:page_transition/page_transition.dart';
import 'Loginpage.dart';
import 'package:rflutter_alert/rflutter_alert.dart';
import 'package:covider/Database.dart';

class Register extends StatelessWidget {
  final FirebaseAuth auth = FirebaseAuth.instance;

  final TextEditingController _email = TextEditingController();
  final TextEditingController _password = TextEditingController();
  final TextEditingController _username = TextEditingController();
  final TextEditingController _namdep = TextEditingController();
  final TextEditingController _nambel = TextEditingController();
  final TextEditingController _nope = TextEditingController();

  @override
  Widget build(BuildContext context) {
    FlutterStatusbarcolor.setStatusBarColor(Color.fromRGBO(71, 63, 151, 1));
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: ListView(children: [
        Padding(
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
                    text: 'DAFTAR',
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
              TextFormField(
                controller: _username,
                decoration: InputDecoration(
                    prefixIcon: Icon(Icons.star),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10)),
                    hintText: 'Username'),
              ),
              SizedBox(height: 30),
              TextFormField(
                controller: _email,
                decoration: InputDecoration(
                    prefixIcon: Icon(Icons.email),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10)),
                    hintText: 'Email'),
              ),
              SizedBox(height: 30),
              TextFormField(
                controller: _namdep,
                decoration: InputDecoration(
                    prefixIcon: Icon(Icons.star),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10)),
                    hintText: 'Nama Depan'),
              ),
              SizedBox(height: 30),
              TextFormField(
                controller: _nambel,
                decoration: InputDecoration(
                    prefixIcon: Icon(Icons.star),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10)),
                    hintText: 'Nama Belakang'),
              ),
              SizedBox(height: 30),
              TextFormField(
                keyboardType: TextInputType.number,
                controller: _nope,
                decoration: InputDecoration(
                    prefixIcon: Icon(Icons.phone),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10)),
                    hintText: 'Nomor HP'),
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
                      'Daftar',
                      style: TextStyle(fontSize: 18),
                    ),
                    onPressed: () async {
                      try {
                        UserCredential result =
                            await auth.createUserWithEmailAndPassword(
                                email: _email.text, password: _password.text);
                        User user = result.user;
                        user.updateProfile(displayName: _username.text);
                        Database.createOrupdate(user.uid,
                                namadep: _namdep.text,
                                namabel: _nambel.text,
                                nope: _nope.text)
                            .then((value) => Navigator.pushReplacement(
                                context,
                                PageTransition(
                                    type: PageTransitionType.leftToRight,
                                    child: HomeScreen2())));
                      } on FirebaseAuthException catch (e) {
                        Alert(context: context, title: "Error", desc: e.message)
                            .show();
                      }
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
                        'Does have account?',
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
                            Navigator.pop(
                                context,
                                PageTransition(
                                    type: PageTransitionType.rightToLeft,
                                    duration: Duration(seconds: 1),
                                    child: LoginScreen()));
                          },
                          child: Text('Login',
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
      ]),
    );
  }
}
