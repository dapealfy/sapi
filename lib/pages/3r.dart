import 'package:flutter/material.dart';
import 'package:line_awesome_icons/line_awesome_icons.dart';

class ThreeR extends StatefulWidget {
  @override
  _ThreeRState createState() => _ThreeRState();
}

var greenColor = Color(0xff32a05f);
var darkGreenColor = Color(0xff279152);

class _ThreeRState extends State<ThreeR> {
  var reduce = true;
  var reuse = false;
  var recycle = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: <Widget>[
          Expanded(
            flex: 3,
            child: ListView(
              // crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Container(
                  color: greenColor,
                  child: AppBar(
                    leading: BackButton(
                      color: Colors.white,
                    ),
                    elevation: 0.0,
                    backgroundColor: greenColor,
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                    borderRadius:
                        BorderRadius.only(bottomRight: Radius.circular(108)),
                    color: greenColor,
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
                              'Apa itu 3R?',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 30,
                                  color: Colors.white),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.symmetric(horizontal: 20),
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
                                      reduce = true;
                                      reuse = false;
                                      recycle = false;
                                    });
                                  },
                                  child: Container(
                                    padding: EdgeInsets.symmetric(vertical: 20),
                                    height: 120.0,
                                    width:
                                        MediaQuery.of(context).size.width / 4,
                                    decoration: BoxDecoration(
                                        color: reduce == true
                                            ? Colors.green.withOpacity(0.8)
                                            : darkGreenColor,
                                        border: reduce != true
                                            ? Border()
                                            : Border.all(
                                                color: darkGreenColor,
                                                width: 3),
                                        borderRadius:
                                            BorderRadius.circular(32)),
                                    child: Column(
                                      children: <Widget>[
                                        Icon(
                                          LineAwesomeIcons.angle_double_down,
                                          color: Colors.white,
                                          size: 40,
                                        ),
                                        SizedBox(height: 10),
                                        Container(
                                          margin: EdgeInsets.symmetric(
                                              horizontal: 5),
                                          child: Text(
                                            'Reduce \n(Mengurangi)',
                                            textAlign: TextAlign.center,
                                            style: TextStyle(
                                                color: Colors.white54,
                                                fontSize: 8.5),
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                ),
                                GestureDetector(
                                  onTap: () {
                                    setState(() {
                                      reduce = false;
                                      reuse = true;
                                      recycle = false;
                                    });
                                  },
                                  child: Container(
                                    padding: EdgeInsets.symmetric(vertical: 20),
                                    height: 120.0,
                                    width:
                                        MediaQuery.of(context).size.width / 4,
                                    decoration: BoxDecoration(
                                        color: reuse == true
                                            ? Colors.green.withOpacity(0.8)
                                            : darkGreenColor,
                                        border: reuse != true
                                            ? Border()
                                            : Border.all(
                                                color: darkGreenColor,
                                                width: 3),
                                        borderRadius:
                                            BorderRadius.circular(32)),
                                    child: Column(
                                      children: <Widget>[
                                        Icon(
                                          LineAwesomeIcons.refresh,
                                          color: Colors.white,
                                          size: 40,
                                        ),
                                        SizedBox(height: 10),
                                        Container(
                                          margin: EdgeInsets.symmetric(
                                              horizontal: 5),
                                          child: Text(
                                            'Reuse \n(Gunakan Ulang)',
                                            maxLines: 2,
                                            textAlign: TextAlign.center,
                                            style: TextStyle(
                                                color: Colors.white54,
                                                fontSize: 8.5),
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                ),
                                GestureDetector(
                                  onTap: () {
                                    setState(() {
                                      reduce = false;
                                      reuse = false;
                                      recycle = true;
                                    });
                                  },
                                  child: Container(
                                    padding: EdgeInsets.symmetric(vertical: 20),
                                    height: 120.0,
                                    width:
                                        MediaQuery.of(context).size.width / 4,
                                    decoration: BoxDecoration(
                                        color: recycle == true
                                            ? Colors.green.withOpacity(0.8)
                                            : darkGreenColor,
                                        border: recycle != true
                                            ? Border()
                                            : Border.all(
                                                color: darkGreenColor,
                                                width: 3),
                                        borderRadius:
                                            BorderRadius.circular(32)),
                                    child: Column(
                                      children: <Widget>[
                                        Icon(
                                          LineAwesomeIcons.recycle,
                                          color: Colors.white,
                                          size: 40,
                                        ),
                                        SizedBox(height: 10),
                                        Container(
                                          margin: EdgeInsets.symmetric(
                                              horizontal: 5),
                                          child: Text(
                                            'Recycle \n(Daur Ulang)',
                                            textAlign: TextAlign.center,
                                            style: TextStyle(
                                                color: Colors.white54,
                                                fontSize: 8.5),
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
                reduce == true
                    ? Container(
                        decoration: BoxDecoration(
                            color: Colors.grey.withOpacity(0.1),
                            border: Border.all(color: Colors.grey),
                            borderRadius: BorderRadius.circular(20)),
                        margin:
                            EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                        padding:
                            EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text(
                              'Reduce (Mengurangi)',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 25,
                                color: Colors.black.withOpacity(0.8),
                              ),
                            ),
                            SizedBox(height: 10),
                            Text(
                                'Reduce berarti kita mengurangi penggunaan bahan-bahan yang bisa merusak lingkungan. Reduce juga berarti mengurangi belanja barang-barang yang anda tidak “terlalu” butuhkan seperti baju baru, aksesoris tambahan atau apa pun yang intinya adalah pengurangan kebutuhan. Reduce adalah masyarakat di ajak untuk sebisa mungkin mengurangi pengeluaran sampah dari rumah, baik yang terbakar ataupun yang tidak terbakar. Sebisa mungkin lakukan minimalisasi barang atau material yang kita pergunakan. Semakin banyak kita menggunakan material, semakin banyak sampah yang dihasilkan.'),
                            SizedBox(height: 20),
                          ],
                        ),
                      )
                    : Container(),
                reuse == true
                    ? Container(
                        decoration: BoxDecoration(
                            color: Colors.grey.withOpacity(0.1),
                            border: Border.all(color: Colors.grey),
                            borderRadius: BorderRadius.circular(20)),
                        margin:
                            EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                        padding:
                            EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text(
                              'Reuse (Gunakan Ulang)',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 25,
                                color: Colors.black.withOpacity(0.8),
                              ),
                            ),
                            SizedBox(height: 10),
                            Text(
                                'Reuse adalah memakai kembali atau mengusahakan agar barang-barang yang masih bisa dipakai, tetapi sudah tidak diinginkan lagi, dijual ke orang lain.  Arti reuse selain itu adalah memakai barang yang sudah tidak diperlukan lagi dengan fungsi yang lain. Sebisa mungkin pilihlah barang-barang yang bisa dipakai kembali. Hindari pemakaian barang-barang yang disposable (sekali pakai, buang). Hal ini dapat memperpanjang waktu pemakaian barang sebelum ia menjadi sampah.'),
                            SizedBox(height: 20),
                          ],
                        ),
                      )
                    : Container(),
                recycle == true
                    ? Container(
                        decoration: BoxDecoration(
                            color: Colors.grey.withOpacity(0.1),
                            border: Border.all(color: Colors.grey),
                            borderRadius: BorderRadius.circular(20)),
                        margin:
                            EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                        padding:
                            EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text(
                              'Recycle (Daur Ulang)',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 25,
                                color: Colors.black.withOpacity(0.8),
                              ),
                            ),
                            SizedBox(height: 10),
                            Text(
                                'Recycle adalah mendaur ulang barang. Paling mudah adalah mendaur ulang sampah organik di rumah anda, menggunakan bekas botol plastik air minum atau apapun sebagai pot tanaman, sampai mendaur ulang kertas bekas untuk menjadi kertas kembali. Daur ulang secara besar-besaran belum menjadi kebiasaan di Indonesia. Tempat sampah yang membedakan antara organik dan non-organik saja tidak jalan. Malah akhirnya lebih banyak gerilyawan lingkungan yang melakukan daur ulang secara kreatif dan menularkannya pada banyak orang dibandingkan pemerintah.'),
                            SizedBox(height: 20),
                          ],
                        ),
                      )
                    : Container(),
                reduce == true
                    ? Container(
                        width: 200,
                        height: 200,
                        child: Image.network(
                          'https://thumbs.dreamstime.com/b/cartoon-girl-dog-gathering-garbage-plastic-waste-recycling-kids-activities-vector-ecology-theme-illustration-kid-picking-144366925.jpg',
                          width: 300,
                        ),
                      )
                    : Container(),
                reuse == true
                    ? Container(
                        width: 200,
                        height: 200,
                        child: Image.network(
                          'https://static.vecteezy.com/system/resources/previews/000/608/100/non_2x/vector-family-clean-and-collect-garbage-at-tha-park.jpg',
                          width: 300,
                        ),
                      )
                    : Container(),
                recycle == true
                    ? Container(
                        width: 200,
                        height: 200,
                        child: Image.network(
                          'https://thumbs.dreamstime.com/b/kids-activities-vector-ecology-theme-illustration-boy-gathering-garbage-plastic-waste-recycling-kid-picking-up-bottles-144366905.jpg',
                          width: 300,
                        ),
                      )
                    : Container(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
