import 'package:covider/Auth/Loginpage.dart';
import 'package:covider/Home/Home.dart';
import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:provider/provider.dart';

class Wrapper extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    User firebaseUser = Provider.of<User>(context);
    return (firebaseUser == null) ? LoginScreen() : Home();
  }
}
