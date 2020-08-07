import 'package:flutter/material.dart';
import 'package:line_awesome_icons/line_awesome_icons.dart';

class MCK extends StatefulWidget {
  @override
  _MCKState createState() => _MCKState();
}

var greenColor = Color(0xff32a05f);
var darkGreenColor = Color(0xff279152);

class _MCKState extends State<MCK> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: greenColor,
      body: ListView(
        children: <Widget>[
          Container(
            color: Colors.white,
            child: AppBar(
              leading: BackButton(
                color: greenColor,
              ),
              elevation: 0.0,
              backgroundColor: Colors.white,
            ),
          ),
          Container(
            height: 300,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(bottomLeft: Radius.circular(108)),
              color: Colors.white,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              mainAxisAlignment: MainAxisAlignment.end,
              children: <Widget>[
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: <Widget>[
                      Text(
                        'MCK (Mandi, Cuci, Kakus)',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 30,
                            color: greenColor),
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      Image.asset(
                        'assets/mck.png',
                        height: 190,
                      ),
                      SizedBox(
                        height: 20,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 30),
          GestureDetector(
            onTap: () {
              showDialog(
                context: context,
                builder: (BuildContext context) {
                  // return object of type Dialog
                  return AlertDialog(
                    title: Text("Kriteria Toilet"),
                    content: Container(
                      height: 410,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: <Widget>[
                          new Text("Toilet harus standar nasional"),
                          SizedBox(height: 10),
                          Image.network(
                              'https://asset-a.grid.id/crop/0x0:0x0/360x240/photo/novafoto/original/4676_harusnya-begini-standar-toilet-umum-yang-bersih.jpg',
                              height: 200),
                          Container(
                            height: 180,
                            child: Image.network(
                                'https://www.jasabersihrumah.com/wp-content/uploads/2020/02/toilet-jongkok.jpg',
                                height: 200),
                          )
                        ],
                      ),
                    ),
                    actions: <Widget>[
                      // usually buttons at the bottom of the dialog
                      new FlatButton(
                        child: new Text("OK"),
                        onPressed: () {
                          Navigator.of(context).pop();
                        },
                      ),
                    ],
                  );
                },
              );
            },
            child: Container(
              margin: EdgeInsets.symmetric(horizontal: 20),
              decoration: BoxDecoration(
                  color: darkGreenColor.withOpacity(0.5),
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(color: darkGreenColor, width: 2)),
              child: ListTile(
                title: Text(
                  'Kriteria Toilet',
                  style: TextStyle(color: Colors.white),
                ),
                subtitle: Text(
                  'Kriteria toilet harus sesuai standar nasional',
                  style: TextStyle(color: Colors.white.withOpacity(0.8)),
                ),
              ),
            ),
          ),
          SizedBox(height: 10),
          GestureDetector(
            onTap: () {
              showDialog(
                context: context,
                builder: (BuildContext context) {
                  // return object of type Dialog
                  return AlertDialog(
                    title: Text("Koneksi Toilet dan Septic Tank"),
                    content: Container(
                      height: 230,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: <Widget>[
                          new Text(
                              "Pastikan toilet dan septic tank terhubung dengan baik"),
                          SizedBox(height: 10),
                          Container(
                            height: 180,
                            child: Image.network(
                                'https://www.asdar.id/wp-content/uploads/2017/11/septictank.jpg',
                                height: 200),
                          ),
                        ],
                      ),
                    ),
                    actions: <Widget>[
                      // usually buttons at the bottom of the dialog
                      new FlatButton(
                        child: new Text("OK"),
                        onPressed: () {
                          Navigator.of(context).pop();
                        },
                      ),
                    ],
                  );
                },
              );
            },
            child: Container(
              margin: EdgeInsets.symmetric(horizontal: 20),
              padding: EdgeInsets.symmetric(vertical: 5),
              decoration: BoxDecoration(
                  color: darkGreenColor.withOpacity(0.5),
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(color: darkGreenColor, width: 2)),
              child: ListTile(
                title: Text(
                  'Koneksi Toilet dan Septic Tank',
                  style: TextStyle(color: Colors.white),
                ),
                subtitle: Text(
                  'Pastikan toilet terhubung dengan septic tank agar ramah lingkungan',
                  style: TextStyle(color: Colors.white.withOpacity(0.8)),
                ),
              ),
            ),
          ),
          SizedBox(height: 10),
          GestureDetector(
            onTap: () {
              showDialog(
                context: context,
                builder: (BuildContext context) {
                  // return object of type Dialog
                  return AlertDialog(
                    title: Text("Jangan Buang Air di Tempat Sembarangan"),
                    content: Container(
                      height: 230,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: <Widget>[
                          new Text(
                              "Tidak BAB di cubluk, jamban liar, sungai dan semak-semak"),
                          SizedBox(height: 10),
                          Container(
                            height: 180,
                            child: Image.network(
                                'https://mediakom.sehatnegeriku.com/wp-content/uploads/2015/06/BAB-SEMBARANGAN.jpg',
                                height: 200),
                          )
                        ],
                      ),
                    ),
                    actions: <Widget>[
                      // usually buttons at the bottom of the dialog
                      new FlatButton(
                        child: new Text("OK"),
                        onPressed: () {
                          Navigator.of(context).pop();
                        },
                      ),
                    ],
                  );
                },
              );
            },
            child: Container(
              margin: EdgeInsets.symmetric(horizontal: 20),
              decoration: BoxDecoration(
                  color: darkGreenColor.withOpacity(0.5),
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(color: darkGreenColor, width: 2)),
              child: ListTile(
                title: Text(
                  'Jangan Buang Air di Tempat Sembarangan',
                  style: TextStyle(color: Colors.white),
                ),
                subtitle: Text(
                  'Tidak BAB di cubluk, jamban liar, sungai, semak-semak.',
                  style: TextStyle(color: Colors.white.withOpacity(0.8)),
                ),
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
            child: Image.asset('assets/mckkita.jpeg'),
          ),
        ],
      ),
    );
  }
}
