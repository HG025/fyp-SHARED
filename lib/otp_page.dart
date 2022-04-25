import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:fyp/login.dart';
import 'posts.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

class otp_page extends StatefulWidget {
  const otp_page({Key? key}) : super(key: key);

  @override
  State<otp_page> createState() => _otp_pageState();
}

class _otp_pageState extends State<otp_page> {
  void loginn() {
    Navigator.push(context, MaterialPageRoute(builder: ((context) => login())));
  }

  @override
  double getSmallDiameter(BuildContext context) =>
      MediaQuery.of(context).size.width * 2 / 3;
  double getBiglDiameter(BuildContext context) =>
      MediaQuery.of(context).size.width * 7 / 8;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: false, // nechy waly circle upr nhi aayen gy..
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
          Align(
            alignment: Alignment.bottomCenter,
            child: ListView(
              children: <Widget>[
                // Container(
                //   alignment: Alignment.center,
                //   decoration: BoxDecoration(
                //       color: const Color(0xFFEEEEEE),
                //       borderRadius: BorderRadius.circular(10)),
                //   margin: const EdgeInsets.fromLTRB(20, 250, 20, 0),
                //   padding: const EdgeInsets.fromLTRB(10, 0, 10, 25),
                //   child: Text(
                //     "One-Time-Password",
                //     style: TextStyle(
                //       fontSize: 15,
                //       fontWeight: FontWeight.w700,
                //     ),
                //   ),
                // ),

                Container(
                  decoration: BoxDecoration(
                      color: const Color(0xFFEEEEEE),
                      //color: Color.fromARGB(255, 199, 190, 190),
                      //border: Border.all(color: Colors.grey),
                      borderRadius: BorderRadius.circular(10)),
                  margin: const EdgeInsets.fromLTRB(20, 300, 20, 10),
                  padding: const EdgeInsets.fromLTRB(10, 0, 10, 25),
                  child: Card(
                    color: const Color(0xFFEEEEEE),
                    child: Padding(
                      padding: EdgeInsets.all(5),
                      child: PinCodeTextField(
                          textStyle: TextStyle(
                            color: Color.fromARGB(255, 1, 34, 3),
                          ),
                          appContext: context,
                          length: 4,
                          onChanged: print),
                    ),
                  ),
                ),
                Padding(padding: EdgeInsets.all(5)),
                Container(
                  margin: const EdgeInsets.fromLTRB(100, 0, 50, 30),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      SizedBox(
                        width: MediaQuery.of(context).size.width * 0.5,
                        height: 40,
                        child: Container(
                          child: Material(
                            borderRadius: BorderRadius.circular(20),
                            color: Colors.transparent,
                            child: ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                  shape: new RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(20)),
                                  primary: Color.fromARGB(255, 1, 34, 3),
                                  onPrimary: Colors.white,
                                  elevation: 20,
                                  shadowColor: Colors.black),
                              onPressed: loginn,
                              child: const Center(
                                child: Text(
                                  "NEXT",
                                  style: TextStyle(
                                    fontWeight: FontWeight.w700,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                            ),
                          ),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            gradient: const LinearGradient(
                              begin: Alignment.topRight,
                              end: Alignment(0.9, 0.0),
                              colors: <Color>[
                                Color.fromARGB(255, 1, 29, 24),
                                Color.fromARGB(255, 38, 95, 84),
                              ],
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
        ]));
  }
}
