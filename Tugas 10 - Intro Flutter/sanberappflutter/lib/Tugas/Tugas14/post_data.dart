import 'package:flutter/material.dart';
import 'get_data.dart';
import 'package:http/http.dart' as http;
import 'Models/user_model.dart';

class PostDataAPI extends StatefulWidget {
  @override
  _PostDataAPIState createState() => _PostDataAPIState();
}

Future<UserModel> createUser(
  String name,
  String email,
  String address,
) async {
  var apiURL = Uri.parse("https://achmadhilmy-sanbercode.my.id/api/v1/profile");
  final respon = await http.post(apiURL, body: {
    "name": name,
    "email": email,
    "address": address,
  });
  if (respon.statusCode == 201) {
    final String responString = respon.body;
    return userModelFromJson(responString);
  } else {
    return null;
  }
}

class _PostDataAPIState extends State<PostDataAPI> {
  UserModel _user;
  final TextEditingController nameController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController addressController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Post Data'),
      ),
      body: Container(
        padding: EdgeInsets.all(32),
        child: Column(
          children: <Widget>[
            TextField(
              controller: nameController,
              decoration: InputDecoration(
                  border: OutlineInputBorder(), labelText: 'Nama Lengkap'),
            ),
            SizedBox(
              height: 10,
            ),
            TextField(
              controller: emailController,
              decoration: InputDecoration(
                  border: OutlineInputBorder(), labelText: 'Email'),
            ),
            SizedBox(
              height: 10,
            ),
            TextField(
              controller: addressController,
              decoration: InputDecoration(
                  border: OutlineInputBorder(), labelText: 'Alamat'),
            ),
            SizedBox(
              height: 32,
            ),
            _user == null
                ? Container()
                : Text(
                    'User dengan nama${_user.name} sudah ada, dan id nya ${_user.id}')
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () async {
          final String name = nameController.text;
          final String email = emailController.text;
          final String address = addressController.text;
          final UserModel user = await createUser(name, email, address);
          setState(() {
            _user = user;
          });
          Navigator.of(context).pop(GetDataAPI());
        },
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ),
    );
  }
}
