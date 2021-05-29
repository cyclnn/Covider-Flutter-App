import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'Models/user_model.dart';
import 'post_data.dart';

class GetDataApi extends StatefulWidget {
  @override
  _GetDataApiState createState() => _GetDataApiState();
}

class _GetDataApiState extends State<GetDataApi> {
  get id => null;

  getUserData() async {
    var response = await http
        .get(Uri.parse("https://firebasestorage.googleapis.com/v0/b/covider-68f38.appspot.com/o/ListRS.json?alt=media&token=7da4ada7-6b8b-4d36-a17d-b3246e53baf0"));
    var jsonData = jsonDecode(response.body);

    List<User> users = [];

    for (var u in jsonData) {
      User user = User(u["name"], u["email"], u["address"]);
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
          title: Text("Get Data"),
          actions: <Widget>[
            Padding(
                padding: EdgeInsets.only(right: 20.0),
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => PostDataApi()),
                    );
                  },
                  child: Icon(
                    Icons.add,
                    size: 26.0,
                  ),
                )),
          ],
        ),
        body: Container(
            height: 1900,
            child: Card(
                child: FutureBuilder(
                    future: getUserData(),
                    builder: (context, snapshot) {
                      if (snapshot.data == null) {
                        return Container(
                          child: Center(child: Text("Loading. . . .")),
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
                    }))));
  }
}
