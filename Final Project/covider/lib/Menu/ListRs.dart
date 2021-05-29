import 'package:flutter/material.dart';
import 'package:covider/Menu/class_data_api.dart';
import 'dart:convert';
import 'package:http/http.dart' as http;

class ListRS extends StatefulWidget {
  @override
  _ListRSState createState() => _ListRSState();
}

class _ListRSState extends State<ListRS> {
  get id => null;

  getUserData() async {
    var response = await http.get(Uri.parse(
        "https://firebasestorage.googleapis.com/v0/b/covider-68f38.appspot.com/o/ListRS.json?alt=media&token=c1069a3d-26b6-484f-a311-5efd85d36dcc"));
    var jsonData = jsonDecode(response.body);

    List<User> users = [];

    for (var u in jsonData) {
      User user = User(u["name"], u["address"], u["region"], u["province"]);
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
    return new Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(71, 63, 151, 1),
        toolbarHeight: 60,
        title: Text('Rumah Sakit Rujukan Covid-19'),
        actions: [IconButton(icon: Icon(Icons.sync), onPressed: () {})],
      ),
      body: Container(
          child: FutureBuilder(
              future: getUserData(),
              builder: (context, snapshot) {
                if (snapshot.data == null) {
                  return Container(
                    child: Center(
                        child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            CircularProgressIndicator(),
                          ],
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text("LOADING DATA"),
                          ],
                        ),
                      ],
                    )),
                  );
                } else {
                  return ListView.builder(
                      itemCount: snapshot.data.length,
                      itemBuilder: (context, i) {
                        return Card(
                          shadowColor: Colors.black,
                          color: Colors.green[300],
                          child: ListTile(
                            contentPadding: EdgeInsets.all(8),
                            title: Padding(
                              padding: const EdgeInsets.only(bottom: 20),
                              child: Text(
                                snapshot.data[i].name,
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 20),
                              ),
                            ),
                            subtitle: Text(snapshot.data[i].region,
                                style: TextStyle(fontSize: 12)),
                            trailing: Text(
                              snapshot.data[i].province,
                              style: TextStyle(
                                  color: Colors.white70, fontSize: 15),
                            ),
                          ),
                        );
                      });
                }
              })),
    );
  }
}
