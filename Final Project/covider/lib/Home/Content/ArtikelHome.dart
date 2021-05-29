import 'package:flutter/material.dart';

class Artikelhome extends StatefulWidget {
  @override
  _ArtikelhomeState createState() => _ArtikelhomeState();
}

class _ArtikelhomeState extends State<Artikelhome> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: Color.fromRGBO(71, 63, 151, 1),
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(40), topRight: Radius.circular(40))),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Gejala Umum Covid-19",
                  style: TextStyle(
                      fontSize: 25,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'ArchivoNarrow'),
                ),
              ],
            ),
            Divider(
              color: Colors.white,
            ),
            SizedBox(
              height: 25,
            ),
            Container(
              height: 200,
              child: ListView(
                // This next line does the trick.
                scrollDirection: Axis.horizontal,
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.only(left: 10, right: 10),
                    child: Container(
                      decoration: BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                            color: Colors.yellow.withOpacity(0.5),
                            spreadRadius: 4,
                            blurRadius: 5,
                            offset: Offset(0, 3),
                          ),
                        ],
                        gradient: LinearGradient(
                          begin: FractionalOffset.topCenter,
                          end: FractionalOffset.bottomCenter,
                          colors: [
                            Colors.white.withOpacity(0.8),
                            Colors.yellow.withOpacity(1),
                          ],
                        ),
                        borderRadius: BorderRadius.circular(40),
                        color: Colors.red,
                      ),
                      width: 180.0,
                      child: Padding(
                        padding: const EdgeInsets.only(top: 20, bottom: 25),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Image.asset(
                                  'assets/img/batuk.png',
                                  width: 120,
                                )
                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  'Batuk Kering',
                                  style: TextStyle(
                                      fontWeight: FontWeight.w600,
                                      fontSize: 20,
                                      fontFamily: 'Graphik',
                                      color: Colors.white),
                                )
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 10, right: 10),
                    child: Container(
                      decoration: BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                            color: Colors.red.withOpacity(0.5),
                            spreadRadius: 4,
                            blurRadius: 5,
                            offset: Offset(0, 3),
                          ),
                        ],
                        gradient: LinearGradient(
                          begin: FractionalOffset.topCenter,
                          end: FractionalOffset.bottomCenter,
                          colors: [
                            Colors.white.withOpacity(0.8),
                            Colors.red.withOpacity(1),
                          ],
                        ),
                        borderRadius: BorderRadius.circular(40),
                        color: Colors.red,
                      ),
                      width: 180.0,
                      child: Padding(
                        padding: const EdgeInsets.only(top: 20, bottom: 25),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Image.asset(
                                  'assets/img/demamm.png',
                                  width: 120,
                                )
                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  'Demam',
                                  style: TextStyle(
                                      fontWeight: FontWeight.w600,
                                      fontSize: 20,
                                      fontFamily: 'Graphik',
                                      color: Colors.white),
                                )
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 10, right: 10),
                    child: Container(
                      decoration: BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                            color: Colors.purple.withOpacity(0.5),
                            spreadRadius: 4,
                            blurRadius: 5,
                            offset: Offset(0, 3),
                          ),
                        ],
                        gradient: LinearGradient(
                          begin: FractionalOffset.topCenter,
                          end: FractionalOffset.bottomCenter,
                          colors: [
                            Colors.white.withOpacity(0.8),
                            Colors.purple.withOpacity(1),
                          ],
                        ),
                        borderRadius: BorderRadius.circular(40),
                        color: Colors.red,
                      ),
                      width: 180.0,
                      child: Padding(
                        padding: const EdgeInsets.only(top: 20, bottom: 25),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Image.asset(
                                  'assets/img/sesakk.png',
                                  width: 120,
                                )
                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  'Sesak Nafas',
                                  style: TextStyle(
                                      fontWeight: FontWeight.w600,
                                      fontSize: 20,
                                      fontFamily: 'Graphik',
                                      color: Colors.white),
                                )
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 10, right: 10),
                    child: Container(
                      decoration: BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                            color: Colors.blue.withOpacity(0.5),
                            spreadRadius: 4,
                            blurRadius: 5,
                            offset: Offset(0, 3),
                          ),
                        ],
                        gradient: LinearGradient(
                          begin: FractionalOffset.topCenter,
                          end: FractionalOffset.bottomCenter,
                          colors: [
                            Colors.white.withOpacity(0.8),
                            Colors.blue.withOpacity(1),
                          ],
                        ),
                        borderRadius: BorderRadius.circular(40),
                        color: Colors.red,
                      ),
                      width: 180.0,
                      child: Padding(
                        padding: const EdgeInsets.only(top: 20, bottom: 25),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Image.asset(
                                  'assets/img/lelah.png',
                                  width: 120,
                                )
                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  'Tubuh Lemas',
                                  style: TextStyle(
                                      fontWeight: FontWeight.w600,
                                      fontSize: 20,
                                      fontFamily: 'Graphik',
                                      color: Colors.white),
                                )
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 10, right: 10),
                    child: Container(
                      width: 160.0,
                      color: Colors.blue,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 10, right: 10),
                    child: Container(
                      width: 160.0,
                      color: Colors.green,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 10, right: 10),
                    child: Container(
                      width: 160.0,
                      color: Colors.yellow,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 10, right: 10),
                    child: Container(
                      width: 160.0,
                      color: Colors.orange,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 50,
            )
          ],
        ),
      ),
    );
  }
}
