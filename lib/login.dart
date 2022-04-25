import 'package:flutter/material.dart';
import 'package:fyp/signup.dart';
import 'forgot_password.dart';
import 'posts.dart';

class login extends StatefulWidget {
  const login({Key? key}) : super(key: key);

  @override
  State<login> createState() => _loginState();
}

class _loginState extends State<login> {
  @override
  void Signup() {
    Navigator.push(
        context, MaterialPageRoute(builder: ((context) => signup())));
  }

  void forgotpass() {
    Navigator.push(
        context, MaterialPageRoute(builder: ((context) => forgotpassword())));
  }

  void post() {
    Navigator.push(context, MaterialPageRoute(builder: ((context) => posts())));
  }

  void NavBar1() {
    Navigator.push(
        context, MaterialPageRoute(builder: ((context) => NavBar())));
  }

  double getSmallDiameter(BuildContext context) =>
      MediaQuery.of(context).size.width * 2 / 3;
  double getBiglDiameter(BuildContext context) =>
      MediaQuery.of(context).size.width * 7 / 8;

  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: false, // nechy waly circle upr nhi aayen gy..
        backgroundColor: Color.fromARGB(255, 199, 190, 190),
//      backgroundColor: const Color(0xFFEEEEEE),
        ///  backgroundColor: Color.fromARGB(255, 54, 48, 48),
        //   backgroundColor: Color.fromARGB(255, 1, 29, 24),
        //     backgroundColor: Color.fromARGB(255, 149, 158, 111),
//      backgroundColor: Color.fromARGB(255, 228, 222, 174),
        // backgroundColor: Color.fromARGB(255, 54, 48, 48),
        body: Stack(
          children: <Widget>[
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
                        TextField(
                          decoration: InputDecoration(
                              icon: const Icon(
                                Icons.email,
                                color: Color.fromARGB(255, 8, 73, 11),
                              ),
                              focusedBorder: UnderlineInputBorder(
                                  borderSide: BorderSide(
                                      color: Color.fromARGB(255, 20, 20, 20))),
                              labelText: "Email",
                              enabledBorder: InputBorder.none,
                              labelStyle: const TextStyle(
                                  color: Color.fromARGB(255, 0, 0, 0))),
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
                              labelText: "Password",
                              enabledBorder: InputBorder.none,
                              labelStyle: const TextStyle(
                                  color: Color.fromARGB(255, 27, 27, 27))),
                        )
                      ],
                    ),
                  ),
                  Align(
                      alignment: Alignment.centerRight,
                      child: Container(
                          margin: const EdgeInsets.fromLTRB(0, 0, 20, 10),
                          child: TextButton(
                            onPressed: forgotpass,
                            child: Text(
                              "Forgot Password?",
                              style: TextStyle(
                                color: Color.fromARGB(255, 1, 29, 24),
                                fontSize: 11,
                                fontStyle: FontStyle.italic,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ))),
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
                                onPressed: NavBar1,
                                child: const Center(
                                  child: Text(
                                    "SIGN IN",
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
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.fromLTRB(50, 05, 14, 50),
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Expanded(
                            child: Text(
                              "DON'T HAVE AN ACCOUNT ? ",
                              style: TextStyle(
                                  fontSize: 11,
                                  color: Colors.grey,
                                  fontWeight: FontWeight.w500),
                            ),
                          ),
                          Expanded(
                              child: TextButton(
                                  onPressed: Signup,
                                  child: Text(
                                    "SIGN UP",
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 11,
                                      fontStyle: FontStyle.italic,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ))),
                        ]),
                  )
                ],
              ),
            ),
          ],
        ));
  }
}
