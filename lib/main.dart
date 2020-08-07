import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:line_awesome_icons/line_awesome_icons.dart';
import 'package:sapi/pages/3r.dart';
import 'package:sapi/pages/games.dart';
import 'package:sapi/pages/mck.dart';
import 'package:sapi/pages/musik.dart';
import 'package:sapi/pages/tempatsampah.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'SaPi',
      home: MyHomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

var greenColor = Color(0xff32a05f);
var darkGreenColor = Color(0xff279152);

class MyHomePage extends StatelessWidget {
  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        key: _scaffoldKey,
        backgroundColor: greenColor,
        drawer: Drawer(
          child: ListView(
            padding: EdgeInsets.zero,
            children: <Widget>[
              Container(
                height: 155.0,
                child: DrawerHeader(
                  child: Row(
                    children: <Widget>[
                      SizedBox(
                        width: 20,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Text(
                            "Sanitation Pioneer",
                            style: TextStyle(
                              fontSize: 20,
                              color: Colors.white,
                            ),
                            textAlign: TextAlign.left,
                          ),
                          Text(
                            "by Duta Sanitasi",
                            style: TextStyle(
                              color: Colors.white,
                            ),
                            textAlign: TextAlign.left,
                          ),
                        ],
                      ),
                    ],
                  ),
                  decoration: BoxDecoration(
                    color: greenColor,
                  ),
                ),
              ),
              ListTile(
                leading: Icon(
                  LineAwesomeIcons.home,
                  color: greenColor,
                ),
                title: Text(
                  'Home',
                ),
                onTap: () {
                  Navigator.pop(context);
                },
              ),
              ListTile(
                leading: Icon(
                  LineAwesomeIcons.gamepad,
                  color: greenColor,
                ),
                title: Text(
                  'Games',
                ),
                onTap: () {
                  Navigator.pop(context);
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => GamePage()));
                },
              ),
              ListTile(
                leading: Icon(
                  LineAwesomeIcons.music,
                  color: greenColor,
                ),
                title: Text(
                  'Music',
                ),
                onTap: () {
                  Navigator.pop(context);
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => DetailMusic()));
                },
              ),
              Divider(),
              ListTile(
                leading: Icon(
                  LineAwesomeIcons.question_circle,
                  color: greenColor,
                ),
                title: Text(
                  'Help',
                ),
                onTap: () {
                  Navigator.pop(context);
                },
              ),
              ListTile(
                leading: Icon(
                  LineAwesomeIcons.group,
                  color: greenColor,
                ),
                title: Text(
                  'About Us',
                ),
                onTap: () {
                  Navigator.pop(context);
                },
              ),
            ],
          ),
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Container(
              color: Colors.white,
              child: AppBar(
                leading: new IconButton(
                  icon: new Icon(
                    LineAwesomeIcons.bars,
                    color: Colors.green,
                  ),
                  onPressed: () => _scaffoldKey.currentState.openDrawer(),
                ),
                backgroundColor: Colors.white,
                elevation: 0.0,
              ),
            ),
            Expanded(
              flex: 2,
              child: Container(
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius:
                      BorderRadius.only(bottomLeft: Radius.circular(108.0)),
                  color: Colors.white,
                ),
                child: Padding(
                  padding: const EdgeInsets.all(32.0),
                  child: Stack(
                    children: <Widget>[
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Container(
                            width: 300.0,
                            child: Text(
                              'SaPi App',
                              style: TextStyle(
                                  color: greenColor,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 52.0),
                            ),
                          ),
                          SizedBox(height: 12.0),
                          Text(
                            'Sanitation Pioneer Application',
                            style: TextStyle(color: Colors.black45),
                          ),
                          Text(
                            'by Duta Sanitasi',
                            style: TextStyle(color: Colors.black45),
                          ),
                          SizedBox(height: 12.0),
                        ],
                      ),
                      Column(
                        children: <Widget>[
                          Spacer(
                            flex: 2,
                          ),
                          Container(
                            // height: MediaQuery.of(context).size.height / 2,
                            width: MediaQuery.of(context).size.height / 2.5,
                            child: Image.asset(
                              'assets/onboard.png',
                              fit: BoxFit.cover,
                            ),
                          )
                        ],
                      ),
                      SizedBox(height: 16.0)
                    ],
                  ),
                ),
              ),
            ),
            Expanded(
              flex: 1,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 28.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    SizedBox(height: 16.0),
                    Spacer(),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        GestureDetector(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => ThreeR()));
                          },
                          child: Container(
                            padding: EdgeInsets.symmetric(vertical: 23),
                            height: 120.0,
                            width: MediaQuery.of(context).size.width / 4,
                            decoration: BoxDecoration(
                                color: darkGreenColor,
                                borderRadius: BorderRadius.circular(32)),
                            child: Column(
                              children: <Widget>[
                                Text(
                                  '3R',
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white,
                                      fontSize: 32),
                                ),
                                SizedBox(height: 10),
                                Container(
                                  margin: EdgeInsets.symmetric(horizontal: 10),
                                  child: Text(
                                    'Reduce Reuse Recycle',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                        color: Colors.white54, fontSize: 10),
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                        GestureDetector(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => TempatSampah()));
                          },
                          child: Container(
                            padding: EdgeInsets.symmetric(vertical: 23),
                            height: 120.0,
                            width: MediaQuery.of(context).size.width / 4,
                            decoration: BoxDecoration(
                                color: darkGreenColor,
                                borderRadius: BorderRadius.circular(32)),
                            child: Column(
                              children: <Widget>[
                                Icon(
                                  LineAwesomeIcons.trash_o,
                                  color: Colors.white,
                                  size: 40,
                                ),
                                SizedBox(height: 10),
                                Container(
                                  margin: EdgeInsets.symmetric(horizontal: 10),
                                  child: Text(
                                    '5 Bank Sampah',
                                    maxLines: 2,
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                        color: Colors.white54, fontSize: 10),
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                        GestureDetector(
                          onTap: () {
                            Navigator.push(context,
                                MaterialPageRoute(builder: (context) => MCK()));
                          },
                          child: Container(
                            padding: EdgeInsets.symmetric(vertical: 23),
                            height: 120.0,
                            width: MediaQuery.of(context).size.width / 4,
                            decoration: BoxDecoration(
                                color: darkGreenColor,
                                borderRadius: BorderRadius.circular(32)),
                            child: Column(
                              children: <Widget>[
                                Icon(
                                  LineAwesomeIcons.wheelchair,
                                  color: Colors.white,
                                  size: 40,
                                ),
                                SizedBox(height: 10),
                                Container(
                                  margin: EdgeInsets.symmetric(horizontal: 10),
                                  child: Text(
                                    'MCK Bersih nan Sehat',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                        color: Colors.white54, fontSize: 10),
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 50.0),
                  ],
                ),
              ),
            )
          ],
        ));
  }
}
