import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:covider/Database.dart';
import 'package:awesome_dialog/awesome_dialog.dart';

class AkunSetting extends StatefulWidget {
  @override
  _AkunSettingState createState() => _AkunSettingState();
}

class _AkunSettingState extends State<AkunSetting> {
  DocumentSnapshot list;
  static FirebaseAuth auth = FirebaseAuth.instance;
  var namee;

  @override
  Widget build(BuildContext context) {
    FutureBuilder(
      future: Database.getData(auth.currentUser.uid),
      builder: (context, snapshot) {
        if (snapshot.data == null)
          return Container(
            child: Text('No Data..'),
          );
        else
          return Text(
            snapshot.data['nama'],
            style: TextStyle(
                color: Colors.white, fontWeight: FontWeight.bold, fontSize: 19),
          );
      },
    );

    final TextEditingController _pass = TextEditingController();
    final TextEditingController namadep = TextEditingController();
    final TextEditingController namabel = TextEditingController();
    final TextEditingController alamat = TextEditingController();

    TextEditingController nope = TextEditingController();
    TextEditingController user =
        TextEditingController(text: auth.currentUser.displayName);

    var email = auth.currentUser.email;
    TextEditingController _email = TextEditingController(text: email);

    return new Scaffold(
        appBar: AppBar(
          backgroundColor: Color.fromRGBO(71, 63, 151, 1),
          title: Text("Pengaturan Profil"),
        ),
        body: ListView(children: [
          Container(
            padding: EdgeInsets.only(left: 20, right: 20, top: 17),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Text(
                      "Profil Anda",
                      style: TextStyle(
                          color: Color.fromRGBO(71, 63, 151, 1),
                          fontSize: 25,
                          fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
                SizedBox(
                  height: 6,
                ),
                Divider(
                  color: Colors.grey,
                  height: 12,
                ),
                SizedBox(
                  height: 25,
                ),
                Center(
                  child: Column(
                    children: <Widget>[
                      Container(
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          image: DecorationImage(
                              image: AssetImage('assets/img/profil.png'),
                              fit: BoxFit.cover),
                        ),
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: 45,
                ),
                TextFormField(
                  focusNode: FocusNode(),
                  enableInteractiveSelection: false,
                  enabled: false,
                  controller: _email,
                  decoration: new InputDecoration(
                    labelText: "Email Terdaftar",
                    icon: Icon(Icons.email),
                    border: OutlineInputBorder(
                        borderRadius: new BorderRadius.circular(5.0)),
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                TextFormField(
                  focusNode: FocusNode(),
                  enableInteractiveSelection: false,
                  enabled: false,
                  controller: user,
                  decoration: new InputDecoration(
                    labelText: "Username Terdaftar",
                    icon: Icon(Icons.verified_user),
                    border: OutlineInputBorder(
                        borderRadius: new BorderRadius.circular(5.0)),
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                TextFormField(
                  controller: namadep,
                  keyboardType: TextInputType.emailAddress,
                  decoration: new InputDecoration(
                    hintText: "Masukkan Nama Depan",
                    labelText: "Nama Depan",
                    icon: Icon(Icons.people),
                    border: OutlineInputBorder(
                        borderRadius: new BorderRadius.circular(5.0)),
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                TextFormField(
                  controller: namabel,
                  keyboardType: TextInputType.emailAddress,
                  decoration: new InputDecoration(
                    hintText: "Masukkan Nama Belakang",
                    labelText: "Nama Belakang",
                    icon: Icon(Icons.people),
                    border: OutlineInputBorder(
                        borderRadius: new BorderRadius.circular(5.0)),
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                TextFormField(
                  controller: alamat,
                  keyboardType: TextInputType.emailAddress,
                  decoration: new InputDecoration(
                    hintText: "Masukkan Alamat",
                    labelText: "Alamat",
                    icon: Icon(Icons.location_city),
                    border: OutlineInputBorder(
                        borderRadius: new BorderRadius.circular(5.0)),
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                TextFormField(
                  controller: nope,
                  keyboardType: TextInputType.number,
                  decoration: new InputDecoration(
                    hintText: "Masukkan Nomor HP",
                    labelText: "Nomor HP",
                    icon: Icon(Icons.phone),
                    border: OutlineInputBorder(
                        borderRadius: new BorderRadius.circular(5.0)),
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                TextFormField(
                  obscureText: true,
                  controller: _pass,
                  decoration: new InputDecoration(
                    hintText: "Masukkan Password Baru",
                    labelText: "New Password (Opsional)",
                    icon: Icon(Icons.lock),
                    border: OutlineInputBorder(
                        borderRadius: new BorderRadius.circular(5.0)),
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                RaisedButton(
                  onPressed: () {
                    User user = FirebaseAuth.instance.currentUser;
                    user.updatePassword(_pass.text);
                    Database.createOrupdate(auth.currentUser.uid,
                            namadep: namadep.text,
                            namabel: namabel.text,
                            alamat: alamat.text,
                            nope: nope.text)
                        .then((value) => AwesomeDialog(
                              context: context,
                              dialogType: DialogType.SUCCES,
                              animType: AnimType.BOTTOMSLIDE,
                              title: 'Berhasil',
                              desc: 'Data Berhasil Diperbarui',
                              btnOkOnPress: () {},
                            ).show());
                  },
                  color: Colors.blue,
                  child: Padding(
                    padding: const EdgeInsets.all(10),
                    child: Text('Simpan'),
                  ),
                ),
              ],
            ),
          ),
        ]));
  }
}
