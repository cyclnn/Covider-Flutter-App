import 'package:covider/Home/Content/ArtikelHome.dart';
import 'package:covider/Home/Content/CardHome.dart';
import 'package:covider/Home/Drawer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_statusbarcolor/flutter_statusbarcolor.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:covider/Auth/AuthServices.dart';
import 'package:rflutter_alert/rflutter_alert.dart';
import 'package:covider/Database.dart';

FirebaseAuth auth = FirebaseAuth.instance;

class HomeScreen2 extends StatefulWidget {
  @override
  _HomeScreen2State createState() => _HomeScreen2State();
}

class _HomeScreen2State extends State<HomeScreen2> {
  User user;

  var _tel = 'tel:0215210411';
  var _sms = 'sms:081212123119';
  _telepon() async => await canLaunch(_tel)
      ? await launch(_tel)
      : throw 'Could not launch $_tel';

  _message() async {
    await canLaunch(_sms)
        ? await launch(_sms)
        : throw 'Gagal Kirim SMS ke $_sms';
  }

  @override
  Widget build(BuildContext context) {
    FlutterStatusbarcolor.setStatusBarColor(Color.fromRGBO(71, 63, 151, 1));

    return new Scaffold(
      appBar: AppBar(
          backgroundColor: Color.fromRGBO(71, 63, 151, 1),
          elevation: 0.0,
          actions: <Widget>[
            Padding(
              padding: const EdgeInsets.only(right: 16),
              child: IconButton(
                icon: Icon(
                  Icons.logout,
                  color: Colors.white,
                ),
                onPressed: () {
                  Alert(
                    context: context,
                    type: AlertType.warning,
                    title: "Peringatan",
                    desc: "Apakah Anda Yakin Ingin Logout?",
                    buttons: [
                      DialogButton(
                        child: Text(
                          "No",
                          style: TextStyle(color: Colors.white, fontSize: 20),
                        ),
                        onPressed: () => Navigator.pop(context),
                        color: Color.fromRGBO(0, 179, 134, 1.0),
                      ),
                      DialogButton(
                        child: Text(
                          "Yes",
                          style: TextStyle(color: Colors.white, fontSize: 20),
                        ),
                        onPressed: () => AuthServices.signOut()
                            .then((value) => Navigator.pop(context)),
                        gradient: LinearGradient(colors: [
                          Color.fromRGBO(116, 116, 191, 1.0),
                          Color.fromRGBO(52, 138, 199, 1.0)
                        ]),
                      )
                    ],
                  ).show();
                },
              ),
            )
          ]),
      drawer: DrawerScreen(),
      resizeToAvoidBottomInset: false,
      body: ListView(
        children: [
          Container(
              height: 300,
              decoration: BoxDecoration(
                color: Color.fromRGBO(71, 63, 151, 1),
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(40),
                    bottomRight: Radius.circular(40)),
              ),
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 5,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 12),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          FutureBuilder(
                            future: Database.getData(auth.currentUser.uid),
                            builder: (context, snapshot) {
                              if (snapshot.data == null)
                                return Container(
                                    child: Text(
                                  'Get Data ...',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 35),
                                ));
                              else
                                return Text(
                                  'Hello, ' + snapshot.data['namadep'],
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 35),
                                );
                            },
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 45),
                    Padding(
                      padding: const EdgeInsets.only(left: 12),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Merasakan Gejala Covid-19?',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 20,
                                fontWeight: FontWeight.bold),
                          )
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 12),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Flexible(
                            child: Text(
                              'Jika Kamu Merasakan Sakit Gejala Covid-19 Segera Hubungi Layanan Kesehatan Terdekat',
                              style: TextStyle(
                                  color: Colors.grey,
                                  fontSize: 18,
                                  fontWeight: FontWeight.normal),
                            ),
                          )
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 25,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 12, right: 10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          SizedBox(
                            height: 45,
                            width: 170,
                            child: ElevatedButton(
                                style: ButtonStyle(
                                    shape: MaterialStateProperty.all<
                                            RoundedRectangleBorder>(
                                        RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(20))),
                                    backgroundColor:
                                        MaterialStateProperty.all(Colors.red)),
                                onPressed: () {
                                  _telepon();
                                },
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: [
                                    Icon(Icons.call),
                                    Text(
                                      'Call Now',
                                      style: TextStyle(fontSize: 18),
                                    ),
                                  ],
                                )),
                          ),
                          SizedBox(
                            height: 45,
                            width: 170,
                            child: ElevatedButton(
                                style: ButtonStyle(
                                    shape: MaterialStateProperty.all<
                                            RoundedRectangleBorder>(
                                        RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(20))),
                                    backgroundColor:
                                        MaterialStateProperty.all(Colors.blue)),
                                onPressed: () {
                                  _message();
                                },
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: [
                                    Icon(Icons.message),
                                    Text(
                                      'Send SMS',
                                      style: TextStyle(fontSize: 18),
                                    ),
                                  ],
                                )),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              )),
          CardHome(),
          Artikelhome()
        ],
      ),
    );
  }
}
