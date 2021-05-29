import 'package:covider/Auth/AuthServices.dart';
import 'package:covider/Welcome/w2.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'wrapper.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return StreamProvider.value(
        value: AuthServices.firebaseUserStream,
        child: MaterialApp(
            title: "CoviDer",
            debugShowCheckedModeBanner: false,
            home: Wrapper()));
  }
}
