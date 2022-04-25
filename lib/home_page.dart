import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'dart:async';
import 'dart:io';
import 'package:flutter/cupertino.dart';
import 'package:connectivity_plus/connectivity_plus.dart';
import 'dart:async';
import 'dart:developer' as developer;
import 'package:flutter/services.dart';
import 'package:flutter/foundation.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:fyp/login.dart';
import 'package:fluttertoast/fluttertoast.dart';

class home_page extends StatefulWidget {
  const home_page({Key? key}) : super(key: key);

  @override
  State<home_page> createState() => _home_pageState();
}

class _home_pageState extends State<home_page> {
  @override
  bool? isConnected;
  late Timer _timer;

  Future<void> _checkInternetConnection() async {
    try {
      final response = await InternetAddress.lookup('huzaifa.com');
      if (response.isNotEmpty) {
        setState(() {
          isConnected = true;
        });
      }
    } on SocketException catch (err) {
      setState(() {
        isConnected = false;
      });
      if (kDebugMode) {
        print(err);
      }
    }

    try {
      if (isConnected == true) {
        _timer = new Timer(Duration(seconds: 3), () {
          Navigator.push(
              context, MaterialPageRoute(builder: ((context) => login())));
        });
      } else {
        //Toast ha yeh on krna ha
        Fluttertoast.showToast(
          msg: 'NO Internet',
          toastLength: Toast.LENGTH_LONG,
        );
      }
    } catch (e) {
      // yeh toast bhi on krna ha
      Fluttertoast.showToast(
        msg: "yeh nhi chala",
        toastLength: Toast.LENGTH_LONG,
      );
    }

    // if (isConnected == true) {
    //   Navigator.push(
    //       context, MaterialPageRoute(builder: ((context) => login())));
    // } else {
    //   Fluttertoast.showToast(
    //     msg: 'No Internet ',
    //     toastLength: Toast.LENGTH_LONG,
    //     backgroundColor: Colors.blue,
    //     textColor: Colors.white,
    //     fontSize: 16.0,
    //   );
    // }
    @override
    Widget build(BuildContext context) {
      // TODO: implement build
      throw UnimplementedError();
    }

    try {
      if (isConnected == true) {
        setState(() {
          login();
        });
      }
    } catch (e) {
      Text("error");
    }
  }

  // This will check the connection at the beginning
  @override
  void initState() {
    _checkInternetConnection();
    super.initState();
  }

  // if (isConnected == true) {
  //   Navigator.push(
  //       context, MaterialPageRoute(builder: ((context) => register())));
  // } else {
  //   Fluttertoast.showToast(
  //     msg: 'No Internet ',
  //     toastLength: Toast.LENGTH_LONG,
  //     backgroundColor: Colors.blue,
  //     textColor: Colors.white,
  //     fontSize: 16.0,
  //   );
  // }

  double getSmallDiameter(BuildContext context) =>
      MediaQuery.of(context).size.width * 2 / 3;
  double getBiglDiameter(BuildContext context) =>
      MediaQuery.of(context).size.width * 7 / 8;

  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: false, // nechy waly circle upr nhi aayen gy..
        // backgroundColor: Color.fromARGB(255, 54, 48, 48),
        backgroundColor: Color.fromARGB(255, 199, 190, 190),
        body: Stack(children: <Widget>[
          Positioned(
            right: -getSmallDiameter(context) / 3,
            top: -getSmallDiameter(context) / 3,
            child: Container(
              width: getSmallDiameter(context),
              height: getSmallDiameter(context),
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
                gradient: LinearGradient(
                  begin: Alignment.topRight,
                  end: Alignment(0.9, 0.0),
                  // 10% of the width, so there are ten blinds.

                  colors: <Color>[
                    Color.fromARGB(255, 1, 29, 24),
                    Color.fromARGB(255, 38, 95, 84),
                  ],
                ),
              ),
            ),
          ),
          Positioned(
            left: -getBiglDiameter(context) / 4,
            top: -getBiglDiameter(context) / 4,
            child: Container(
              child: const Center(
                child: Text(
                  "CRT",
                  style: TextStyle(
                      fontFamily: "Pacifico",
                      fontSize: 40,
                      color: Colors.white),
                ),
              ),
              width: getBiglDiameter(context),
              height: getBiglDiameter(context),
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
                gradient: LinearGradient(
                  begin: Alignment.topRight,
                  end: Alignment(0.9, 0.0),
                  // 10% of the width, so there are ten blinds.

                  colors: <Color>[
                    Color.fromARGB(255, 1, 29, 24),
                    Color.fromARGB(255, 38, 95, 84),
                  ],
                ),
              ),
            ),
          ),
          Positioned(
            right: -getBiglDiameter(context) / 2,
            bottom: -getBiglDiameter(context) / 1.1,
            child: Container(
              width: getBiglDiameter(context),
              height: getBiglDiameter(context),
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
                color: Color.fromARGB(255, 1, 29, 24),
              ),
            ),
          ),
          Positioned(
            left: -getBiglDiameter(context) / 2,
            bottom: -getBiglDiameter(context) / 1.1,
            child: Container(
              width: getBiglDiameter(context),
              height: getBiglDiameter(context),
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
                color: Color.fromARGB(255, 1, 29, 24),
              ),
            ),
          ),
          Container(
            child: Column(
              children: [
                Padding(padding: EdgeInsets.all(200)),
                Container(
                    padding: EdgeInsets.all(50),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          child: CircularProgressIndicator(
                            color: Colors.black,
                          ),
                          alignment: Alignment.bottomCenter,
                          width: 92,
                          height: 92,
                        ),
                        Padding(padding: EdgeInsets.all(60)),
                        Text(
                          "Created By Huzaifa & Shaheer",
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 16,
                            fontStyle: FontStyle.italic,
                          ),
                        ),
                      ],
                    )),
              ],
            ),
          ),
        ]));
  }
}
