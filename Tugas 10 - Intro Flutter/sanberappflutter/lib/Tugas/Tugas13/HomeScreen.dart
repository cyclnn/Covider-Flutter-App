import 'package:flutter/material.dart';
import 'package:sanberappflutter/Tugas/Tugas12/Telegram.dart';

class Homepage extends StatefulWidget {
  @override
  _HomepageState createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  int _selectmenu = 0;
  void _pilihmenu(int index) {
    setState(() {
      _selectmenu = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.menu),
        title: Text('Sanber Flutter'),
        actions: <Widget>[
          Padding(
            padding: const EdgeInsets.only(right: 9),
            child: Icon(Icons.person),
          ),
          Icon(Icons.add_shopping_cart),
          Padding(padding: EdgeInsets.only(left: 18))
        ],
      ),
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 30),
                Text.rich(
                  TextSpan(
                      text: 'Welcome, ',
                      style: TextStyle(
                          color: Color.fromRGBO(225, 38, 91, 1),
                          fontWeight: FontWeight.bold,
                          letterSpacing: 5,
                          fontSize: 55),
                      children: [
                        TextSpan(
                            text: 'Irfan',
                            style: TextStyle(
                                color: Color.fromRGBO(116, 16, 45, 1),
                                fontWeight: FontWeight.normal,
                                letterSpacing: 1,
                                fontSize: 50))
                      ]),
                ),
                SizedBox(
                  height: 30,
                ),
                TextField(
                  decoration: InputDecoration(
                      prefixIcon: Icon(
                        Icons.search,
                        color: Colors.blueGrey,
                      ),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      hintText: 'Pencarian'),
                ),
                SizedBox(
                  height: 30,
                ),
                Text(
                  'Rekomendasi Tempat :',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
                ),
                SizedBox(
                  height: 20,
                ),
                SizedBox(
                  height: 500,
                  child: GridView.count(
                    padding: EdgeInsets.zero,
                    childAspectRatio: 1.500,
                    crossAxisCount: 2,
                    physics: NeverScrollableScrollPhysics(),
                    children: [
                      for (var cityy in city)
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Image.asset('assets/img/$cityy.png'),
                        )
                    ],
                  ),
                ),
                SizedBox(
                  height: 20,
                )
              ],
            ),
          ),
        ],
      ),
      floatingActionButton: Container(
        height: 60,
        width: 60,
        child: FloatingActionButton(
          child: Icon(Icons.message),
          onPressed: () {
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => Telegram()));
          },
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.green,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            title: Text('Home'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite),
            title: Text('Favorit'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shop),
            title: Text('Shop'),
          ),
        ],
        currentIndex: _selectmenu,
        selectedItemColor: Color.fromRGBO(225, 38, 91, 1),
        unselectedItemColor: Colors.white,
        showUnselectedLabels: true,
        onTap: _pilihmenu,
      ),
    );
  }
}

final city = [
  'Berlin',
  'Monas',
  'Roma',
  'Tokyo',
  'Padang',
  'Lampung',
  'Aceh',
  'Medan'
];
