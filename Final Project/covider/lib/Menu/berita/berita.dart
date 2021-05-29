import 'dart:async';
import 'dart:convert';
import 'package:url_launcher/url_launcher.dart';
import 'package:flutter/material.dart';
import 'berita_class.dart';
import 'package:http/http.dart' as http;

class NewsListPage extends StatefulWidget {
  @override
  _NewsListPageState createState() => _NewsListPageState();
}

class _NewsListPageState extends State<NewsListPage> {
  Future<List<Article>> getData() async {
    List<Article> list;
    String link =
        "https://newsapi.org/v2/top-headlines?country=id&source=detik.com&category=health&pagesize=60&apiKey=f3590c47290449f2a41744dc5c687002";
    var res = await http
        .get(Uri.parse(link), headers: {"Accept": "application/json"});
    print(res.body);
    if (res.statusCode == 200) {
      var data = json.decode(res.body);
      var rest = data["articles"] as List;
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
      backgroundColor: Color.fromRGBO(71, 63, 151, 1),
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(71, 63, 151, 1),
        toolbarHeight: 60,
        title: Text('Berita Kesehatan Terbaru'),
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
                                style: TextStyle(color: Colors.white),
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
                          return Card(
                            shadowColor: Colors.black,
                            color: Colors.white,
                            child: ListTile(
                              contentPadding: EdgeInsets.all(8),
                              title: Padding(
                                padding: const EdgeInsets.only(bottom: 20),
                                child: Text(
                                  snapshot.data[i].title,
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 18),
                                ),
                              ),
                              subtitle: Text(
                                snapshot.data[i].source.name,
                                style: TextStyle(fontSize: 14),
                                overflow: TextOverflow.ellipsis,
                              ),
                              leading: Padding(
                                  padding: EdgeInsets.all(8),
                                  child: SizedBox(
                                      height: 100,
                                      width: 70,
                                      child: snapshot.data[i].urlToImage == null
                                          ? Center(
                                              child: Text('No Image'),
                                            )
                                          : Image.network(
                                              snapshot.data[i].urlToImage,
                                              width: 200,
                                              height: 400,
                                              fit: BoxFit.fill,
                                            ))),
                              onTap: () async {
                                await launch(snapshot.data[i].url);
                              },
                            ),
                          );
                        });
                  }
                })),
      ),
    );
  }
}
