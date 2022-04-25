import 'package:flutter/material.dart';

import 'login.dart';

class change_new_password extends StatefulWidget {
  const change_new_password({Key? key}) : super(key: key);

  @override
  State<change_new_password> createState() => _change_new_passwordState();
}

class _change_new_passwordState extends State<change_new_password> {
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
              child: ListView(children: <Widget>[
                Container(
                  decoration: BoxDecoration(
                      color: const Color(0xFFEEEEEE),
                      //color: Color.fromARGB(255, 199, 190, 190),
                      //border: Border.all(color: Colors.grey),
                      borderRadius: BorderRadius.circular(10)),
                  margin: const EdgeInsets.fromLTRB(20, 300, 20, 10),
                  padding: const EdgeInsets.fromLTRB(10, 0, 10, 25),
                  child: Column(
                    children: <Widget>[
                      // TextField(
                      //   obscureText: true,
                      //   decoration: InputDecoration(
                      //       icon: const Icon(
                      //         Icons.vpn_key,
                      //         color: Color.fromARGB(255, 8, 73, 11),
                      //       ),
                      //       focusedBorder: UnderlineInputBorder(
                      //           borderSide: BorderSide(
                      //               color: Color.fromARGB(255, 20, 20, 20))),
                      //       labelText: "Password Provided",
                      //       enabledBorder: InputBorder.none,
                      //       labelStyle: const TextStyle(
                      //           color: Color.fromARGB(255, 27, 27, 27))),
                      // ),
                      TextField(
                        obscureText: true,
                        decoration: InputDecoration(
                            icon: const Icon(
                              Icons.vpn_key,
                              color: Color.fromARGB(255, 8, 73, 11),
                            ),
                            focusedBorder: UnderlineInputBorder(
                                borderSide: BorderSide(
                                    color: Color.fromARGB(255, 20, 20, 20))),
                            labelText: "New Password",
                            enabledBorder: InputBorder.none,
                            labelStyle: const TextStyle(
                                color: Color.fromARGB(255, 27, 27, 27))),
                      ),
                      TextField(
                        obscureText: true,
                        decoration: InputDecoration(
                            icon: const Icon(
                              Icons.vpn_key,
                              color: Color.fromARGB(255, 8, 73, 11),
                            ),
                            focusedBorder: UnderlineInputBorder(
                                borderSide: BorderSide(
                                    color: Color.fromARGB(255, 20, 20, 20))),
                            labelText: "Confirm New Password",
                            enabledBorder: InputBorder.none,
                            labelStyle: const TextStyle(
                                color: Color.fromARGB(255, 27, 27, 27))),
                      ),
                    ],
                  ),
                ),
                Padding(padding: EdgeInsets.all(05)),
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
                                        borderRadius:
                                            BorderRadius.circular(20)),
                                    primary: Color.fromARGB(255, 1, 34, 3),
                                    onPrimary: Colors.white,
                                    elevation: 20,
                                    shadowColor: Colors.black),
                                onPressed: loginn,
                                child: const Center(
                                  child: Text(
                                    "Change Password",
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
                        ),
                      ]),
                )
              ]))
        ]));
  }
}
