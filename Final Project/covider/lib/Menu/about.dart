import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class AboutMe extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    String _github = 'https://github.com/irfan1810';
    String _gitlab =
        'https://gitlab.com/irfanakbari/bootcampflutter/-/tree/master';

    _gihub() async => await canLaunch(_github)
        ? await launch(_github)
        : throw 'Could not launch $_github';

    _gilab() async => await canLaunch(_gitlab)
        ? await launch(_gitlab)
        : throw 'Could not launch $_gitlab';

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(71, 63, 151, 1),
        toolbarHeight: 60,
        title: Text('About Developer'),
      ),
      body: Stack(
        alignment: Alignment.center,
        children: <Widget>[
          // background image and bottom contents
          Column(
            children: <Widget>[
              Container(
                height: 180.0,
                color: Colors.orange,
                child: Center(
                    child: Image.network(
                  'http://medusastudiocardiff.co.uk/wp-content/uploads/2020/06/39875853-header-wallpapers.jpg',
                  fit: BoxFit.cover,
                )),
              ),
              Expanded(
                child: Container(
                  color: Colors.white,
                  child: Center(
                    child: Padding(
                      padding: const EdgeInsets.only(right: 20, left: 40),
                      child: Text(
                        'Halo, Perkenalkan nama saya Irfan Akbari Habibi, saya adalah seorang Mahasiswa Semester 2 Jurusan S1 Ilmu Komputer di Universitas Sumatera Utara, Aplikasi ini saya buat sebagai Project Akhir dari Pembelajaran Flutter. ',
                        style: TextStyle(
                            color: Colors.black,
                            fontFamily: 'Graphik',
                            fontWeight: FontWeight.normal,
                            wordSpacing: 10,
                            fontSize: 20),
                      ),
                    ),
                  ),
                ),
              ),
              Expanded(
                  child: ListView(children: [
                Container(
                  color: Color.fromRGBO(71, 63, 151, 1),
                  child: Center(
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(20),
                          child: Row(
                            children: [
                              SizedBox(
                                height: 40,
                              ),
                              Text(
                                'Link Git & WhatsApp',
                                style: TextStyle(
                                    color: Colors.white, fontSize: 28),
                              )
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(20),
                          child: Column(
                            children: [
                              InkWell(
                                onTap: () {
                                  _gihub();
                                },
                                child: Container(
                                    width: 300,
                                    height: 50,
                                    color: Colors.grey,
                                    child: Center(
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Image.asset('assets/img/git.png'),
                                          Text(
                                            ' GitHub',
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 20,
                                                fontWeight: FontWeight.bold),
                                          ),
                                        ],
                                      ),
                                    )),
                              ),
                              SizedBox(
                                height: 40,
                              ),
                              InkWell(
                                onTap: () {
                                  _gilab();
                                },
                                child: Container(
                                    width: 300,
                                    height: 50,
                                    color: Colors.purple,
                                    child: Center(
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Image.asset('assets/img/gitlab.png'),
                                          Text(
                                            ' GitLab',
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 20,
                                                fontWeight: FontWeight.bold),
                                          ),
                                        ],
                                      ),
                                    )),
                              ),
                              SizedBox(
                                height: 40,
                              ),
                              InkWell(
                                onTap: () {
                                  _gilab();
                                },
                                child: Container(
                                    width: 300,
                                    height: 50,
                                    color: Colors.green,
                                    child: Center(
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Image.asset('assets/img/wa.png'),
                                          Text(
                                            ' WhatsApp',
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 20,
                                                fontWeight: FontWeight.bold),
                                          ),
                                        ],
                                      ),
                                    )),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ]))
            ],
          ),
          // Profile image
          Positioned(
            top: 100.0, // (background container size) - (circle height / 2)
            child: Container(
              height: 150.0,
              width: 150.0,
              child: Image.network(
                  'https://firebasestorage.googleapis.com/v0/b/covider-68f38.appspot.com/o/ftt.jpg?alt=media&token=d96bbec1-1d91-4947-bbf5-f0c0f9fdcb69'),
            ),
          ),
        ],
      ),
    );
  }
}
