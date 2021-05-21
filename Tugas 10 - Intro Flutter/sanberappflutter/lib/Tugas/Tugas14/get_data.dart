import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'post_data.dart';
import 'Models/user_model.dart';

class GetDataAPI extends StatefulWidget {
  @override
  _GetDataAPIState createState() => _GetDataAPIState();
}

class _GetDataAPIState extends State<GetDataAPI> {
  get id => null;

  getUserData() async {
    var respon = await http
        .get(Uri.parse("https://achmadhilmy-sanbercode.my.id/api/v1/profile"));
    var jsonData = jsonDecode(respon.body);

    List<User> users = [];

    for (var u in jsonData) {
      User user = User(u["name"], u['email'], u["adress"]);
      users.add(user);
    }
    print(users.length);
    return users;
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    setState(() {
      getUserData();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Get Data'),
        actions: <Widget>[
          Padding(
            padding: EdgeInsets.only(right: 20),
            child: ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => PostDataAPI()),
                );
              },
              child: Icon(
                Icons.add,
                size: 26,
              ),
            ),
          )
        ],
      ),
      body: Container(
        child: Card(
          child: FutureBuilder(
            builder: (context, snapshot) {
              if (snapshot.data == null) {
                return Container(
                  child: Center(
                    child: Text('Loading'),
                  ),
                );
              } else {
                return ListView.builder(
                    itemCount: snapshot.data.length,
                    itemBuilder: (context, i) {
                      return ListTile(
                        title: Text(snapshot.data[i].name),
                        subtitle: Text(snapshot.data[i].address),
                        trailing: Text(snapshot.data[i].email),
                      );
                    });
              }
            },
          ),
        ),
      ),
    );
  }
}
