import 'package:flutter/material.dart';
import 'Get_data.dart';
import 'Models/user_model.dart';
import 'package:http/http.dart' as http;

class PostDataApi extends StatefulWidget {
  PostDataApi({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _PostDataApiState createState() => _PostDataApiState();
}

Future<UserModel> createUser(
  String name,
  String email,
  String address,
) async {
  var apiUrl = Uri.parse("https://achmadhilmy-sanbercode.my.id/api/v1/profile");
  // var apiUrl = Uri.parse("https://reqres.in/api/users");
  final response = await http.post(apiUrl, body: {
    "name": name,
    "email": email,
    "address": address,
  });

  if (response.statusCode == 201) {
    final String responseString = response.body;

    return userModelFromJson(responseString);
  } else {
    return null;
  }
}

class _PostDataApiState extends State<PostDataApi> {
  UserModel _user;
  final TextEditingController nameController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController addressController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Post Data"),
      ),
      body: Container(
        padding: EdgeInsets.all(32),
        child: Column(
          children: <Widget>[
            TextField(
              controller: nameController,
              decoration: InputDecoration(
                  border: OutlineInputBorder(), labelText: "Nama Lengkap"),
            ),
            SizedBox(height: 10),
            TextField(
              controller: emailController,
              decoration: InputDecoration(
                  border: OutlineInputBorder(), labelText: "Email"),
            ),
            SizedBox(height: 10),
            TextField(
              controller: addressController,
              decoration: InputDecoration(
                  border: OutlineInputBorder(), labelText: "address "),
            ),
            SizedBox(
              height: 32,
            ),
            _user == null
                ? Container()
                : Text("the user ${_user.name} is created, and id ${_user.id}"),
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
          Navigator.of(context).pop(GetDataApi());
        },
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
