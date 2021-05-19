import 'package:flutter/material.dart';
import 'HomeScreen.dart';

class Loginpage extends StatefulWidget {
  @override
  _LoginpageState createState() => _LoginpageState();
}

class _LoginpageState extends State<Loginpage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
              decoration: InputDecoration(
                  prefixIcon: Icon(Icons.person),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10)),
                  hintText: 'Username'),
            ),
            SizedBox(height: 30),
            TextField(
              decoration: InputDecoration(
                  prefixIcon: Icon(Icons.lock),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10)),
                  hintText: 'Password'),
            ),
            SizedBox(height: 30),
            Center(
              child: Text.rich(
                TextSpan(
                  text: 'Forgot Password?',
                  style: TextStyle(
                      color: Color.fromRGBO(84, 197, 248, 1), fontSize: 18),
                ),
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
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Homepage()),
                    );
                  },
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Text.rich(
              TextSpan(
                  text: 'Does not have account?                    ',
                  style: TextStyle(color: Colors.black, fontSize: 18),
                  children: [
                    TextSpan(
                        text: 'Sign In',
                        style: TextStyle(
                            color: Color.fromRGBO(84, 197, 248, 1),
                            fontWeight: FontWeight.bold,
                            fontSize: 18))
                  ]),
            ),
          ],
        ),
      ),
    );
  }
}
