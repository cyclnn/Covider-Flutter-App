import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AboutMe extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
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
                height: 200.0,
                color: Colors.orange,
                child: Center(
                    child: Image.asset(
                  'assets/img/spb.jpg',
                  fit: BoxFit.cover,
                )),
              ),
              Expanded(
                child: Container(
                  color: Colors.white,
                  child: Center(
                    child: Text('Content goes here'),
                  ),
                ),
              )
            ],
          ),
          // Profile image
          Positioned(
            top: 150.0, // (background container size) - (circle height / 2)
            child: Container(
              height: 120.0,
              width: 120.0,
              child: Image.asset('assets/img/ftt.jpg'),
            ),
          )
        ],
      ),
    );
  }
}
