import 'dart:async';
import 'dart:convert';
import 'package:flutter/material.dart';
import 'provinsi_class.dart';
import 'package:http/http.dart' as http;
import 'package:intl/intl.dart';

class ProvList extends StatefulWidget {
  @override
  _ProvListState createState() => _ProvListState();
}

class _ProvListState extends State<ProvList> {
  Future<List<Article>> getData() async {
    List<Article> list;
    String link = "https://data.covid19.go.id/public/api/prov.json";
    var res = await http
        .get(Uri.parse(link), headers: {"Accept": "application/json"});
    print(res.body);
    if (res.statusCode == 200) {
      var data = json.decode(res.body);
      var rest = data["list_data"] as List;
      print(rest);
      list = rest.map<Article>((json) => Article.fromJson(json)).toList();
    }
    print(list.length);
    return list;
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    setState(() {
      getData();
    });
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(71, 63, 151, 1),
        toolbarHeight: 60,
        title: Text('Statistik Per Provinsi'),
        actions: [
          IconButton(
              icon: Icon(Icons.sync),
              onPressed: () {
                setState(() {
                  getData();
                });
              })
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: Container(
            child: FutureBuilder(
                future: getData(),
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
                              CircularProgressIndicator(
                                valueColor:
                                    AlwaysStoppedAnimation<Color>(Colors.red),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                "LOADING DATA",
                                style: TextStyle(color: Colors.black),
                              ),
                            ],
                          ),
                        ],
                      )),
                    );
                  } else {
                    return ListView.builder(
                        itemCount: snapshot.data.length,
                        itemBuilder: (context, i) {
                          return Container(
                            height: 170,
                            child: Card(
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(
                                      30), // if you need this
                                  side: BorderSide(
                                    color: Colors.green.withOpacity(0.8),
                                    width: 1,
                                  )),
                              shadowColor: Colors.green,
                              color: Colors.green,
                              child: ListTile(
                                  contentPadding: EdgeInsets.all(8),
                                  title: Padding(
                                    padding: const EdgeInsets.only(bottom: 10),
                                    child: Text(
                                      snapshot.data[i].key,
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontWeight: FontWeight.normal,
                                          fontSize: 20,
                                          fontFamily: 'Pattaya',
                                          letterSpacing: 2),
                                      textAlign: TextAlign.center,
                                      maxLines: 1,
                                      overflow: TextOverflow.ellipsis,
                                    ),
                                  ),
                                  subtitle: Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Row(
                                        children: [
                                          Text(
                                            'Positif : ' +
                                                NumberFormat('###,###,###')
                                                    .format(snapshot
                                                        .data[i].kasus) +
                                                " Jiwa",
                                            style: TextStyle(
                                                color: Colors.yellow,
                                                fontWeight: FontWeight.normal,
                                                fontSize: 16,
                                                fontFamily: 'Graphik'),
                                          ),
                                        ],
                                      ),
                                      SizedBox(
                                        height: 10,
                                      ),
                                      Row(
                                        children: [
                                          Text(
                                            'Dirawat : ' +
                                                NumberFormat('###,###,###')
                                                    .format(snapshot
                                                        .data[i].dirawat) +
                                                " Jiwa",
                                            style: TextStyle(
                                                color: Colors.yellow,
                                                fontWeight: FontWeight.normal,
                                                fontSize: 16,
                                                fontFamily: 'Graphik'),
                                          ),
                                        ],
                                      ),
                                      SizedBox(
                                        height: 10,
                                      ),
                                      Row(
                                        children: [
                                          Text(
                                            'Sembuh : ' +
                                                NumberFormat('###,###,###')
                                                    .format(snapshot
                                                        .data[i].dirawat) +
                                                " Jiwa",
                                            style: TextStyle(
                                                color: Colors.yellow,
                                                fontWeight: FontWeight.normal,
                                                fontSize: 16,
                                                fontFamily: 'Graphik'),
                                          ),
                                        ],
                                      ),
                                      SizedBox(
                                        height: 10,
                                      ),
                                      Row(
                                        children: [
                                          Text(
                                            'Meninggal : ' +
                                                NumberFormat('###,###,###')
                                                    .format(snapshot
                                                        .data[i].meninggal) +
                                                " Jiwa",
                                            style: TextStyle(
                                                color: Colors.yellow,
                                                fontWeight: FontWeight.normal,
                                                fontSize: 16),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                  trailing:
                                      Image.asset('assets/img/lokasi.png')),
                            ),
                          );
                        });
                  }
                })),
      ),
    );
  }
}
