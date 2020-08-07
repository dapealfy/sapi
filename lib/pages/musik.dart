import 'package:flutter/material.dart';

class DetailMusic extends StatefulWidget {
  DetailMusic();
  @override
  _DetailMusicState createState() => _DetailMusicState();
}

class _DetailMusicState extends State<DetailMusic> {
  var martinGarrix =
      'https://c1.staticflickr.com/2/1841/44200429922_d0cbbf22ba_b.jpg';

  var status;
  var music;
  var posisi;
  var ambil_posisi;
  var ambil_durasi;
  var index;
  var repeat_status = 'off';
  var newvalue;
  var value;
  var lirik;
  var _isTranslated;

  var greenColor = Color(0xff32a05f);
  var darkGreenColor = Color(0xff279152);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: greenColor,
        leading: GestureDetector(
            onTap: () {
              Navigator.pop(context);
            },
            child: BackButton()),
        title: Container(
          transform: Matrix4.translationValues(-20.0, 0.0, 0.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Stack(
                children: <Widget>[
                  Container(
                    height: 35.0,
                    width: 35.0,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(8.0),
                      child: Image.network(
                        martinGarrix,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ],
              ),
              Container(
                padding: EdgeInsets.only(left: 5),
                width: MediaQuery.of(context).size.width - 275,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      "Lagi Lagi Sampah",
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(fontSize: 16.5, fontFamily: 'Roboto'),
                    ),
                    SizedBox(height: 5.0),
                    Text(
                      "Cipt: Ibu Sud",
                      style: TextStyle(fontSize: 13),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        actions: <Widget>[
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.favorite),
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.translate),
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.more_vert),
          ),
        ],
      ),
      body: WillPopScope(
        onWillPop: () async {
          return true;
        },
        child: Stack(
          children: <Widget>[
            Column(
              children: <Widget>[
                Expanded(
                  child: Container(
                    // height: MediaQuery.of(context).size.height * 62 / 100,
                    child: Stack(
                      children: <Widget>[
                        Container(
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: NetworkImage(martinGarrix),
                                  fit: BoxFit.cover)),
                        ),
                        Container(
                          decoration: BoxDecoration(
                            gradient: LinearGradient(
                                colors: [
                                  Theme.of(context).brightness.toString() !=
                                          'Brightness.dark'
                                      ? Colors.white.withOpacity(0.5)
                                      : Colors.black.withOpacity(0.5),
                                  Theme.of(context).brightness.toString() !=
                                          'Brightness.dark'
                                      ? Colors.white.withOpacity(0.93)
                                      : Colors.black.withOpacity(0.93),
                                ],
                                begin: Alignment.topCenter,
                                end: Alignment.bottomCenter),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 12.0),
                          child: ListView(
                            children: <Widget>[
                              SizedBox(height: 52.0),
                              Container(
                                padding: EdgeInsets.only(left: 10, right: 10),
                                alignment: Alignment.topCenter,
                                child: Text('''
Sampah lagi sampah lagi
sampah berserakan
tahukah wahai saudara
sampah ada tempatnya
di rumah di sekolah
di kantor di kedai
di tempat ramai
jaga kebersihan kota
lingkungan hidup semua
sampah ada banyak lalat
penjangkit penyakit
air sungai penuh keruh
sampah berlimpah ruah
jangan buang
sembarang sampah
janganlah
lalat berkembang biak
basmi lalat dan sarangnya
sehatkan lingkungan kita
Sampah lagi sampah lagi
sampah berserakan
tahukah wahai saudara
sampah ada tempatnya
di rumah di sekolah
di kantor di kedai
di tempat ramai
jaga kebersihan kota
lingkungan hidup semua
jaga kebersihan kota
lingkungan hidup semua

''',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                        color: Theme.of(context)
                                                    .brightness
                                                    .toString() ==
                                                'Brightness.dark'
                                            ? Colors.white
                                            : Colors.black,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 22)),
                              ),
                              SizedBox(
                                height: 6.0,
                              ),
                              SizedBox(height: 16.0),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Text(
                        '00:00',
                        style: TextStyle(
                            color: Theme.of(context).brightness.toString() ==
                                    'Brightness.dark'
                                ? Colors.white
                                : Colors.black.withOpacity(0.7),
                            fontSize: 15),
                      ),
                      Container(
                        width: MediaQuery.of(context).size.width - 125,
                        child: Slider(
                          value: 0.0,
                          min: 0.0,
                          onChanged: (double value) {
                            setState(() {});
                          },
                          activeColor: Colors.green,
                        ),
                      ),
                      Text('03:14',
                          style: TextStyle(
                              color: Theme.of(context).brightness.toString() ==
                                      'Brightness.dark'
                                  ? Colors.white
                                  : Colors.black.withOpacity(0.7),
                              fontSize: 15))
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 20, right: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      GestureDetector(
                        onTap: () {},
                        child: Icon(
                          Icons.repeat,
                          color: repeat_status == "on"
                              ? Colors.green
                              : Theme.of(context).brightness.toString() ==
                                      'Brightness.dark'
                                  ? Colors.white
                                  : Colors.black54,
                          size: 32.0,
                        ),
                      ),
                      Row(
                        children: <Widget>[
                          GestureDetector(
                            onTap: () {},
                            child: Icon(
                              Icons.skip_previous,
                              color: Theme.of(context).brightness.toString() ==
                                      'Brightness.dark'
                                  ? Colors.white
                                  : Colors.black54,
                              size: 42.0,
                            ),
                          ),
                          SizedBox(
                            width: 32,
                          ),
                          Container(
                            decoration: BoxDecoration(
                                color: Colors.green,
                                borderRadius: BorderRadius.circular(50.0)),
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: IconButton(
                                icon: Icon(
                                  status == "play"
                                      ? Icons.pause
                                      : Icons.play_arrow,
                                  size: 32.0,
                                  color: Colors.white,
                                ),
                                onPressed: () async {},
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 32,
                          ),
                          GestureDetector(
                            onTap: () {},
                            child: Icon(
                              Icons.skip_next,
                              color: Theme.of(context).brightness.toString() ==
                                      'Brightness.dark'
                                  ? Colors.white
                                  : Colors.black54,
                              size: 42.0,
                            ),
                          ),
                        ],
                      ),
                      GestureDetector(
                        onTap: () {},
                        child: Icon(
                          Icons.more_horiz,
                          color: Theme.of(context).brightness.toString() ==
                                  'Brightness.dark'
                              ? Colors.white
                              : Colors.black54,
                          size: 32.0,
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
