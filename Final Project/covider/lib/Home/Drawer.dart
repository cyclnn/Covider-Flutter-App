import 'package:covider/Menu/ListRs.dart';
import 'package:covider/Menu/about.dart';
import 'package:covider/Menu/akun_setting.dart';
import 'package:covider/Menu/covid/provinsi.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:covider/Database.dart';
import 'package:url_launcher/url_launcher.dart';

FirebaseAuth auth = FirebaseAuth.instance;

class DrawerScreen extends StatefulWidget {
  @override
  _DrawerScreenState createState() => _DrawerScreenState();
}

class _DrawerScreenState extends State<DrawerScreen> {
  String _tel = 'tel:116';

  _tele() async => await canLaunch(_tel)
      ? await launch(_tel)
      : throw 'Could not launch $_tel';

  @override
  Widget build(BuildContext context) {
    var email = auth.currentUser.email;
    return Drawer(
      child: ListView(
        children: <Widget>[
          UserAccountsDrawerHeader(
            decoration: BoxDecoration(color: Color.fromRGBO(71, 63, 151, 1)),
            accountName: FutureBuilder(
              future: Database.getData(auth.currentUser.uid),
              builder: (context, snapshot) {
                if (snapshot.data == null)
                  return Container(
                    child: Text('No Data..'),
                  );
                else
                  return Text(
                    snapshot.data['namadep'] + ' ' + snapshot.data['namabel'],
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 19),
                  );
              },
            ),
            currentAccountPicture: CircleAvatar(
              backgroundImage: AssetImage('assets/img/profil.png'),
            ),
            accountEmail: Text(email),
          ),
          DrawerListTile(
            iconData: Icons.person,
            title: "Profil",
            onTilePressed: () {
              Navigator.push(
                  context,
                  PageTransition(
                      type: PageTransitionType.fade, child: AkunSetting()));
            },
          ),
          DrawerListTile(
            iconData: Icons.list,
            title: "Daftar RS Rujukan",
            onTilePressed: () {
              Navigator.push(
                  context,
                  PageTransition(
                      type: PageTransitionType.fade, child: ListRS()));
            },
          ),
          DrawerListTile(
            iconData: Icons.location_on,
            title: "Data Per Provinsi",
            onTilePressed: () {
              Navigator.push(
                  context,
                  PageTransition(
                      type: PageTransitionType.fade, child: ProvList()));
            },
          ),
          DrawerListTile(
            iconData: Icons.call,
            title: "Hotline Gugus Covid",
            onTilePressed: () {
              _tele();
            },
          ),
          DrawerListTile(
            iconData: Icons.question_answer,
            title: "About App",
            onTilePressed: () {
              Navigator.push(
                  context,
                  PageTransition(
                      type: PageTransitionType.fade, child: AboutMe()));
            },
          ),
          DrawerListTile(
            iconData: Icons.logout,
            title: "Sign Out",
            onTilePressed: () {
              auth.signOut();
            },
          ),
        ],
      ),
    );
  }
}

class DrawerListTile extends StatelessWidget {
  final IconData iconData;
  final String title;
  final VoidCallback onTilePressed;

  const DrawerListTile({Key key, this.iconData, this.title, this.onTilePressed})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: onTilePressed,
      dense: true,
      leading: Icon(iconData),
      title: Text(
        title,
        style: TextStyle(fontSize: 16),
      ),
    );
  }
}
