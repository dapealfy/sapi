import 'package:flutter/material.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

class GamePage extends StatefulWidget {
  @override
  _GamePageState createState() => _GamePageState();
}

var greenColor = Color(0xff32a05f);
var darkGreenColor = Color(0xff279152);

class _GamePageState extends State<GamePage> {
  var mulai = false;
  var tulisan = 'MULAI';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: greenColor,
        title: Text('Games'),
        elevation: 0.0,
      ),
      body: mulai == true
          ? Container(
              margin: EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Container(
                    padding: EdgeInsets.symmetric(vertical: 30, horizontal: 20),
                    decoration: BoxDecoration(
                        color: Colors.grey.withOpacity(0.1),
                        borderRadius: BorderRadius.circular(20),
                        border: Border.all(
                            color: Colors.grey.withOpacity(0.2), width: 2)),
                    child: Column(
                      children: <Widget>[
                        Container(
                          height: 50,
                          decoration: BoxDecoration(
                            color: Colors.orange,
                            shape: BoxShape.circle,
                          ),
                          child: Center(
                            child: Text(
                              '1',
                              style:
                                  TextStyle(color: Colors.white, fontSize: 20),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Text(
                          'Ada berapa warna bank sampah? (dalam huruf)',
                          style: TextStyle(fontSize: 20),
                          textAlign: TextAlign.center,
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Container(
                          margin: EdgeInsets.symmetric(horizontal: 50),
                          child: PinCodeTextField(
                            length: 4,
                            obsecureText: false,
                            animationType: AnimationType.fade,
                            shape: PinCodeFieldShape.box,
                            animationDuration: Duration(milliseconds: 300),
                            borderRadius: BorderRadius.circular(5),
                            fieldHeight: 50,
                            backgroundColor: Colors.grey.withOpacity(0.01),
                            fieldWidth: 40,
                            activeFillColor: Colors.white,
                            inactiveColor: Colors.grey.withOpacity(0.5),
                            onCompleted: (v) {
                              print("Completed");
                            },
                            onChanged: (value) {
                              print(value);
                            },
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            )
          : Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        mulai = true;
                      });
                    },
                    child: Container(
                      height: 200,
                      width: 200,
                      decoration: BoxDecoration(
                        color: greenColor,
                        shape: BoxShape.circle,
                      ),
                      child: Center(
                          child: Text(
                        tulisan,
                        style: TextStyle(
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      )),
                    ),
                  ),
                ],
              ),
            ),
    );
  }
}
