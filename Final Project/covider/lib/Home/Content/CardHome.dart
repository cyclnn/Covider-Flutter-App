import 'package:flutter/material.dart';
import 'package:covider/Home/Get_Data/get_global.dart';

class CardHome extends StatefulWidget {
  @override
  _CardHomeState createState() => _CardHomeState();
}

class _CardHomeState extends State<CardHome> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 15),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Pencegahan",
                  style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'ArchivoNarrow'),
                ),
              ],
            ),
            SizedBox(height: 25),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                GestureDetector(
                  onTap: () {
                    AlertDialog alert = AlertDialog(
                      title: new Text("Jaga Jarak"),
                      content: new Text(
                          "Data yang dimiliki pemerintah, sebaran droplet sejauh 1 meter dan dapat menempel pada benda sekitar. Oleh karenanya mereka yang berjarak kurang dari 1 meter dan memegang benda yang terpapar droplet kemudian tangan yang sudah tersemar menyentuh area wajah, sangat memungkinkan terjadinya penularan."),
                      actions: <Widget>[
                        FlatButton(
                          child: Text('Close'),
                          onPressed: () {
                            Navigator.of(context).pop();
                          },
                        )
                      ],
                    );

                    showDialog(
                      context: context,
                      builder: (BuildContext context) {
                        return alert;
                      },
                    );
                  },
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Image.asset(
                            'assets/img/1.png',
                            width: 100,
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 12,
                      ),
                      Row(
                        children: [
                          Text(
                            'Jaga Jarak',
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 16),
                          )
                        ],
                      ),
                    ],
                  ),
                ),
                Column(
                  children: [
                    GestureDetector(
                      onTap: () {
                        AlertDialog alert = AlertDialog(
                          title: new Text("Cuci Tangan"),
                          content: new Text(
                              "Cucilah tangan dengan air mengalir dan sabun, setidaknya selama 20 detik. Pastikan seluruh bagian tangan tercuci hingga bersih, termasuk punggung tangan, pergelangan tangan, sela-sela jari, dan kuku.Setelah itu, keringkan tangan menggunakan tisu, handuk bersih, atau mesin pengering tangan."),
                          actions: <Widget>[
                            FlatButton(
                              child: Text('Close'),
                              onPressed: () {
                                Navigator.of(context).pop();
                              },
                            )
                          ],
                        );

                        showDialog(
                          context: context,
                          builder: (BuildContext context) {
                            return alert;
                          },
                        );
                      },
                      child: Column(
                        children: [
                          Row(
                            children: [
                              Image.asset(
                                'assets/img/2.png',
                                width: 100,
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 12,
                          ),
                          Row(
                            children: [
                              Text(
                                'Cuci Tangan',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 16),
                              )
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                Column(
                  children: [
                    GestureDetector(
                      onTap: () {
                        AlertDialog alert = AlertDialog(
                          title: new Text("Pakai Masker"),
                          content: new Text(
                              "Menggunakan masker pada saat pandemi COVID-19 merupakan hal yang wajib dipakai terutama ketika bepergian keluar rumah. Masker menjadi hal yang esensial karena mampu menangkal virus ataupun bakteri yang akan masuk ke mulut ataupun hidung seseorang."),
                          actions: <Widget>[
                            FlatButton(
                              child: Text('Close'),
                              onPressed: () {
                                Navigator.of(context).pop();
                              },
                            )
                          ],
                        );

                        showDialog(
                          context: context,
                          builder: (BuildContext context) {
                            return alert;
                          },
                        );
                      },
                      child: Column(
                        children: [
                          Row(
                            children: [
                              Image.asset(
                                'assets/img/3.png',
                                width: 100,
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 12,
                          ),
                          Row(
                            children: [
                              Text(
                                'Pakai Masker',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 16),
                              )
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                )
              ],
            ),
            SizedBox(
              height: 40,
            ),
            Divider(
              color: Colors.grey,
              height: 12,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Statistik Global",
                      style: TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.bold,
                          fontFamily: 'ArchivoNarrow'),
                    ),
                  ],
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    IconButton(
                        icon: Icon(Icons.sync),
                        onPressed: () {
                          setState(() {
                            Global.connectToAPI('sembuh');
                            Global.connectToAPI('positif');
                            Global.connectToAPI('meninggal');
                          });
                        })
                  ],
                ),
              ],
            ),
            Divider(
              color: Colors.grey,
              height: 12,
            ),
            SizedBox(
              height: 25,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Column(
                  children: [
                    Container(
                      width: 350,
                      height: 100,
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              colorFilter: ColorFilter.mode(
                                  Colors.orangeAccent.withOpacity(0.7),
                                  BlendMode.srcATop),
                              image: AssetImage('assets/img/positif.png')),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.orange.withOpacity(0.5),
                              spreadRadius: 8,
                              blurRadius: 9,
                              offset:
                                  Offset(0, 3), // changes position of shadow
                            ),
                          ],
                          color: Colors.orange,
                          borderRadius: BorderRadius.circular(15)),
                      child: Padding(
                        padding: const EdgeInsets.only(top: 10),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  'KASUS POSITIF',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 25),
                                ),
                              ],
                            ),
                            SizedBox(height: 10),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                FutureBuilder(
                                  future: Global.connectToAPI('positif'),
                                  builder: (context, snapshot) {
                                    if (snapshot.data == null)
                                      return Container(
                                        child: CircularProgressIndicator(),
                                      );
                                    else
                                      return Text(
                                        snapshot.data.value + ' Jiwa',
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontWeight: FontWeight.bold,
                                            fontSize: 25),
                                      );
                                  },
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    )
                  ],
                )
              ],
            ),
            SizedBox(
              height: 30,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Column(
                  children: [
                    Container(
                      width: 350,
                      height: 100,
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              colorFilter: ColorFilter.mode(
                                  Colors.lightGreen.withOpacity(0.7),
                                  BlendMode.srcATop),
                              image: AssetImage('assets/img/heart.png')),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.green.withOpacity(0.5),
                              spreadRadius: 8,
                              blurRadius: 9,
                              offset:
                                  Offset(0, 3), // changes position of shadow
                            ),
                          ],
                          color: Colors.green,
                          borderRadius: BorderRadius.circular(15)),
                      child: Padding(
                        padding: const EdgeInsets.only(top: 10),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  'SEMBUH',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 25),
                                ),
                              ],
                            ),
                            SizedBox(height: 10),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                FutureBuilder(
                                  future: Global.connectToAPI('sembuh'),
                                  builder: (context, snapshot) {
                                    if (snapshot.data == null)
                                      return Container(
                                        child: CircularProgressIndicator(),
                                      );
                                    else
                                      return Text(
                                        snapshot.data.value + ' Jiwa',
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontWeight: FontWeight.bold,
                                            fontSize: 25),
                                      );
                                  },
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    )
                  ],
                )
              ],
            ),
            SizedBox(
              height: 30,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Column(
                  children: [
                    Container(
                      width: 350,
                      height: 100,
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              colorFilter: ColorFilter.mode(
                                  Colors.redAccent.withOpacity(0.7),
                                  BlendMode.srcATop),
                              image: AssetImage('assets/img/death.png')),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.red.withOpacity(0.5),
                              spreadRadius: 8,
                              blurRadius: 9,
                              offset:
                                  Offset(0, 3), // changes position of shadow
                            ),
                          ],
                          color: Colors.red,
                          borderRadius: BorderRadius.circular(15)),
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(top: 10),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text(
                                      'MENINGGAL',
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold,
                                          fontSize: 25),
                                    ),
                                  ],
                                ),
                                SizedBox(height: 10),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    FutureBuilder(
                                      future: Global.connectToAPI("meninggal"),
                                      builder: (context, snapshot) {
                                        if (snapshot.data == null)
                                          return Container(
                                            child: CircularProgressIndicator(),
                                          );
                                        else
                                          return Text(
                                            snapshot.data.value + ' Jiwa',
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontWeight: FontWeight.bold,
                                                fontSize: 25),
                                          );
                                      },
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                )
              ],
            ),
            SizedBox(
              height: 40,
            ),
          ],
        ),
      ),
    );
  }
}
