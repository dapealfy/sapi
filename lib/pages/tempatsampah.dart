import 'package:flutter/material.dart';
import 'package:line_awesome_icons/line_awesome_icons.dart';

class TempatSampah extends StatefulWidget {
  @override
  _TempatSampahState createState() => _TempatSampahState();
}

var greenColor = Color(0xff32a05f);
var darkGreenColor = Color(0xff279152);

class _TempatSampahState extends State<TempatSampah> {
  var warna1 = true;
  var warna2 = false;
  var warna3 = false;
  var warna4 = false;
  var warna5 = false;

  var backgroundColor = greenColor;
  var primaryColor = Color(0xff4caf50);

  @override
  void initState() {
    super.initState();
    backgroundColor = greenColor;
    darkGreenColor = Color(0xff279152);
    primaryColor = Colors.green;
  }

  changeColor() {
    setState(() {
      if (warna1 == true) {
        backgroundColor = greenColor;
        darkGreenColor = Color(0xff279152);
        primaryColor = Colors.green;
      } else if (warna2 == true) {
        backgroundColor = Color(0xffb28704);
        darkGreenColor = Colors.orange;
        primaryColor = Colors.orange[300];
      } else if (warna3 == true) {
        backgroundColor = Color(0xffb23c17);
        darkGreenColor = Color(0xffff5722);
        primaryColor = Colors.red[300];
      } else if (warna4 == true) {
        backgroundColor = Color(0xff1769aa);
        darkGreenColor = Color(0xff2196f3);
        primaryColor = Colors.blue[300];
      } else if (warna5 == true) {
        backgroundColor = Color(0xff62757f);
        darkGreenColor = Colors.blueGrey;
        primaryColor = Color(0xff90a4ae);
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      body: ListView(
        children: <Widget>[
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Container(
                color: backgroundColor,
                child: AppBar(
                  leading: BackButton(
                    color: Colors.white,
                  ),
                  elevation: 0.0,
                  backgroundColor: backgroundColor,
                ),
              ),
              Container(
                decoration: BoxDecoration(
                  borderRadius:
                      BorderRadius.only(bottomRight: Radius.circular(108)),
                  color: backgroundColor,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Container(
                      margin:
                          EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text(
                            '5 Bank sampah',
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 30,
                                color: Colors.white),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      margin:
                          EdgeInsets.symmetric(horizontal: 20, vertical: 30),
                      padding: EdgeInsets.only(
                          left: 20, right: 20, top: 20, bottom: 40),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              GestureDetector(
                                onTap: () {
                                  setState(() {
                                    warna1 = true;
                                    warna2 = false;
                                    warna3 = false;
                                    warna4 = false;
                                    warna5 = false;
                                    changeColor();
                                  });
                                },
                                child: Container(
                                  padding: EdgeInsets.symmetric(vertical: 20),
                                  height: 120.0,
                                  width: MediaQuery.of(context).size.width / 2 -
                                      50,
                                  decoration: BoxDecoration(
                                      color: warna1 == true
                                          ? primaryColor
                                          : darkGreenColor,
                                      border: warna1 != true
                                          ? Border()
                                          : Border.all(
                                              color: darkGreenColor, width: 3),
                                      borderRadius: BorderRadius.circular(32)),
                                  child: Column(
                                    children: <Widget>[
                                      Icon(
                                        Icons.fastfood,
                                        color: Colors.white,
                                        size: 40,
                                      ),
                                      SizedBox(height: 10),
                                      Container(
                                        margin:
                                            EdgeInsets.symmetric(horizontal: 5),
                                        child: Text(
                                          'Warna Hijau \n (Tempat sampah organik)',
                                          textAlign: TextAlign.center,
                                          style: TextStyle(
                                              color: Colors.white54,
                                              fontSize: 10),
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                              ),
                              GestureDetector(
                                onTap: () {
                                  setState(() {
                                    warna1 = false;
                                    warna2 = true;
                                    warna3 = false;
                                    warna4 = false;
                                    warna5 = false;
                                    changeColor();
                                  });
                                },
                                child: Container(
                                  padding: EdgeInsets.symmetric(vertical: 20),
                                  height: 120.0,
                                  width: MediaQuery.of(context).size.width / 2 -
                                      50,
                                  decoration: BoxDecoration(
                                      color: warna2 == true
                                          ? primaryColor
                                          : darkGreenColor,
                                      border: warna2 != true
                                          ? Border()
                                          : Border.all(
                                              color: darkGreenColor, width: 3),
                                      borderRadius: BorderRadius.circular(32)),
                                  child: Column(
                                    children: <Widget>[
                                      Icon(
                                        LineAwesomeIcons.refresh,
                                        color: Colors.white,
                                        size: 40,
                                      ),
                                      SizedBox(height: 10),
                                      Container(
                                        margin:
                                            EdgeInsets.symmetric(horizontal: 5),
                                        child: Text(
                                          'Warna Kuning \n(Tempat Sampah Non Organik)',
                                          maxLines: 2,
                                          textAlign: TextAlign.center,
                                          style: TextStyle(
                                              color: Colors.white54,
                                              fontSize: 10),
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(height: 20),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              Expanded(
                                child: GestureDetector(
                                  onTap: () {
                                    setState(() {
                                      warna1 = false;
                                      warna2 = false;
                                      warna3 = true;
                                      warna4 = false;
                                      warna5 = false;
                                      changeColor();
                                    });
                                  },
                                  child: Container(
                                    padding: EdgeInsets.symmetric(vertical: 20),
                                    height: 120.0,
                                    decoration: BoxDecoration(
                                        color: warna3 == true
                                            ? primaryColor
                                            : darkGreenColor,
                                        border: warna3 != true
                                            ? Border()
                                            : Border.all(
                                                color: darkGreenColor,
                                                width: 3),
                                        borderRadius:
                                            BorderRadius.circular(32)),
                                    child: Column(
                                      children: <Widget>[
                                        Icon(
                                          LineAwesomeIcons.exclamation_triangle,
                                          color: Colors.white,
                                          size: 40,
                                        ),
                                        SizedBox(height: 10),
                                        Container(
                                          margin: EdgeInsets.symmetric(
                                              horizontal: 5),
                                          child: Text(
                                            'Warna Merah \n(Tempat Sampah Non Organik Berbahaya)',
                                            textAlign: TextAlign.center,
                                            style: TextStyle(
                                                color: Colors.white54,
                                                fontSize: 10),
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              GestureDetector(
                                onTap: () {
                                  setState(() {
                                    warna1 = false;
                                    warna2 = false;
                                    warna3 = false;
                                    warna4 = true;
                                    warna5 = false;
                                    changeColor();
                                  });
                                },
                                child: Container(
                                  padding: EdgeInsets.symmetric(vertical: 20),
                                  height: 120.0,
                                  width: MediaQuery.of(context).size.width / 2 -
                                      50,
                                  decoration: BoxDecoration(
                                      color: warna4 == true
                                          ? primaryColor
                                          : darkGreenColor,
                                      border: warna4 != true
                                          ? Border()
                                          : Border.all(
                                              color: darkGreenColor, width: 3),
                                      borderRadius: BorderRadius.circular(32)),
                                  child: Column(
                                    children: <Widget>[
                                      Icon(
                                        LineAwesomeIcons.hand_paper_o,
                                        color: Colors.white,
                                        size: 40,
                                      ),
                                      SizedBox(height: 10),
                                      Container(
                                        margin:
                                            EdgeInsets.symmetric(horizontal: 5),
                                        child: Text(
                                          'Warna Biru \n(Non Organik Berbahan Kertas)',
                                          textAlign: TextAlign.center,
                                          style: TextStyle(
                                              color: Colors.white54,
                                              fontSize: 10),
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                              ),
                              GestureDetector(
                                onTap: () {
                                  setState(() {
                                    warna1 = false;
                                    warna2 = false;
                                    warna3 = false;
                                    warna4 = false;
                                    warna5 = true;
                                    changeColor();
                                  });
                                },
                                child: Container(
                                  padding: EdgeInsets.symmetric(vertical: 20),
                                  height: 120.0,
                                  width: MediaQuery.of(context).size.width / 2 -
                                      50,
                                  decoration: BoxDecoration(
                                      color: warna5 == true
                                          ? primaryColor
                                          : darkGreenColor,
                                      border: warna5 != true
                                          ? Border()
                                          : Border.all(
                                              color: darkGreenColor, width: 3),
                                      borderRadius: BorderRadius.circular(32)),
                                  child: Column(
                                    children: <Widget>[
                                      Icon(
                                        LineAwesomeIcons.filter,
                                        color: Colors.white,
                                        size: 40,
                                      ),
                                      SizedBox(height: 10),
                                      Container(
                                        margin:
                                            EdgeInsets.symmetric(horizontal: 5),
                                        child: Text(
                                          'Warna Abu Abu \n(Tempat Sampah Residu)',
                                          maxLines: 2,
                                          textAlign: TextAlign.center,
                                          style: TextStyle(
                                              color: Colors.white54,
                                              fontSize: 10),
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              warna1 == true
                  ? Container(
                      margin: EdgeInsets.symmetric(horizontal: 30),
                      padding:
                          EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                      decoration: BoxDecoration(
                        color: darkGreenColor,
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Column(
                        children: <Widget>[
                          Text(
                            'Warna Hijau',
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 20,
                            ),
                          ),
                          SizedBox(height: 10),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              Container(
                                width: 200,
                                child: Text(
                                  'Jenis tempat sampah bewarna hijau merupakan wadah untuk sisa makanan organik. nantinya sampah ini bisa dijadikan pupuk kompos. biasanya sampah organik berupa daun-daunan, bekas sayuran, dan lain-lain. selain itu, tempat sampah ini juga mempercepat pembuatan kompos.',
                                  style: TextStyle(color: Colors.white),
                                ),
                              ),
                              Container(
                                child: Image.network(
                                    'https://cdn-image.hipwee.com/wp-content/uploads/2016/05/hipwee-sampah-organik.jpg',
                                    width: 100),
                              ),
                            ],
                          ),
                        ],
                      ),
                    )
                  : warna2 == true
                      ? Container(
                          margin: EdgeInsets.symmetric(horizontal: 30),
                          padding: EdgeInsets.symmetric(
                              horizontal: 20, vertical: 10),
                          decoration: BoxDecoration(
                            color: darkGreenColor,
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: Column(
                            children: <Widget>[
                              Text(
                                'Warna Kuning',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20,
                                ),
                              ),
                              SizedBox(height: 10),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: <Widget>[
                                  Container(
                                    width: 200,
                                    child: Text(
                                      'Warna kuning menjadi ciri khas bagi tempat sampah untuk jenis non organik, seperti plastik bekas, kemasan air mineral berbahan plastik dan lain-lain. dengan adanya tempat sampah ini dapat mempermudah pemanfaatannya sebagai kerajinan daur ulang atau daur ulang di pabrik.',
                                      style: TextStyle(color: Colors.white),
                                    ),
                                  ),
                                  Container(
                                    child: Image.network(
                                        'https://3.bp.blogspot.com/-CZGnj7L2aH0/WMDIf2CK4BI/AAAAAAAAAcU/PvLJKkOKtrMWIo52tVGNWMjikvkEaDXEACEw/s640/non%2Borganik.jpe',
                                        width: 100),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        )
                      : warna3 == true
                          ? Container(
                              margin: EdgeInsets.symmetric(horizontal: 30),
                              padding: EdgeInsets.symmetric(
                                  horizontal: 20, vertical: 10),
                              decoration: BoxDecoration(
                                color: darkGreenColor,
                                borderRadius: BorderRadius.circular(20),
                              ),
                              child: Column(
                                children: <Widget>[
                                  Text(
                                    'Warna Merah',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 20,
                                    ),
                                  ),
                                  SizedBox(height: 10),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: <Widget>[
                                      Container(
                                        width: 200,
                                        child: Text(
                                          'Sampah jenis ini harus dipisah karena biasanya berasal dari B3 (Bahan Berbahaya Beracun) yaitu sampah kaca, kemasan detergen atau pembersih lainnya serta pembasmi serangga dan sejenisnya. hal tersebut berguna supaya sampah jenis ini tidak membahayakan kesehatan dan keselamatan orang lain dan mahluk hidup lainnya.',
                                          style: TextStyle(color: Colors.white),
                                        ),
                                      ),
                                      Container(
                                        child: Image.network(
                                            'https://4.bp.blogspot.com/-diLQnENxIKc/WMDIfnpbkjI/AAAAAAAAAcI/exuOYU73XcoJnUpgTi6YzRoXkW8OI_ykQCEw/s640/Sampah%2BB3.jpg',
                                            width: 100),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            )
                          : warna4 == true
                              ? Container(
                                  margin: EdgeInsets.symmetric(horizontal: 30),
                                  padding: EdgeInsets.symmetric(
                                      horizontal: 20, vertical: 10),
                                  decoration: BoxDecoration(
                                    color: darkGreenColor,
                                    borderRadius: BorderRadius.circular(20),
                                  ),
                                  child: Column(
                                    children: <Widget>[
                                      Text(
                                        'Warna Biru',
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold,
                                          fontSize: 20,
                                        ),
                                      ),
                                      SizedBox(height: 10),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: <Widget>[
                                          Container(
                                            width: 200,
                                            child: Text(
                                              'Tempat sampah biru ini diperuntukan bagi sampah jenis kertas. pemisahan sampah kertas bermanfaat untuk mempermudah pengrajin dan industri daur ulang untuk mengolah sampah menjadi kebutuhan lainnya.',
                                              style: TextStyle(
                                                  color: Colors.white),
                                            ),
                                          ),
                                          Container(
                                            child: Image.network(
                                                'https://1.bp.blogspot.com/-STbrrWk_PpU/WMDIfohKgZI/AAAAAAAAAcc/z4JhxRdr1KYnmO63gtJN34YFy9EZWYgowCEw/s640/Sampah%2Bkertas.jpg',
                                                width: 100),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                )
                              : warna5 == true
                                  ? Container(
                                      margin:
                                          EdgeInsets.symmetric(horizontal: 30),
                                      padding: EdgeInsets.symmetric(
                                          horizontal: 20, vertical: 10),
                                      decoration: BoxDecoration(
                                        color: darkGreenColor,
                                        borderRadius: BorderRadius.circular(20),
                                      ),
                                      child: Column(
                                        children: <Widget>[
                                          Text(
                                            'Warna Abu Abu',
                                            style: TextStyle(
                                              color: Colors.white,
                                              fontWeight: FontWeight.bold,
                                              fontSize: 20,
                                            ),
                                          ),
                                          SizedBox(height: 10),
                                          Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: <Widget>[
                                              Container(
                                                width: 200,
                                                child: Text(
                                                  'Tempat sampah jenis ini diperuntukan bagi tempat sampah residu. artinya tempat sampah ini hanya boleh di isi sampah-sampah selain 4 jenis tersebut diatas.',
                                                  style: TextStyle(
                                                      color: Colors.white),
                                                ),
                                              ),
                                              Container(
                                                child: Image.network(
                                                    'https://img.beritasatu.com/cache/investor/798x449-2/1572968805.jpg',
                                                    width: 100),
                                              ),
                                            ],
                                          ),
                                        ],
                                      ),
                                    )
                                  : Container(),
              SizedBox(height: 50),
            ],
          ),
        ],
      ),
    );
  }
}
