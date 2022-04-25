import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'change_new_password.dart';
import 'package:popover/popover.dart';

class forgotpassword extends StatefulWidget {
  const forgotpassword({Key? key}) : super(key: key);

  @override
  State<forgotpassword> createState() => _forgotpasswordState();
}

class _forgotpasswordState extends State<forgotpassword> {
  @override
  void changepass() {
    Navigator.push(context,
        MaterialPageRoute(builder: ((context) => change_new_password())));
  }

  void cc() {
    Navigator.push(
        context, MaterialPageRoute(builder: ((context) => forgotpass())));
  }

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
                    fontFamily: "Pacifico", fontSize: 40, color: Colors.white),
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
              child: Column(children: <Widget>[
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
                      labelStyle:
                          const TextStyle(color: Color.fromARGB(255, 0, 0, 0))),
                ),
              ]),
            ),
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
                          onPressed: cc,
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
                  ),
                ],
              ),
            ),
          ]),
        ),
      ]),
    );
  }
}

class forgotpass extends StatefulWidget {
  const forgotpass({Key? key}) : super(key: key);

  @override
  State<forgotpass> createState() => _forgotpassState();
}

class _forgotpassState extends State<forgotpass> {
  void changepass() {
    Navigator.push(context,
        MaterialPageRoute(builder: ((context) => change_new_password())));
  }

  @override
  Widget build(BuildContext context) {
    return Center(
        child: AlertDialog(
            title: Text(
              "Reset Password",
              style: TextStyle(
                color: Color.fromARGB(255, 1, 34, 3),
                fontSize: 14,
                fontWeight: FontWeight.w700,
              ),
            ),
            content:
                Text('We' 've sent reset password to your email account..'),
            actions: [
          CupertinoDialogAction(
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                  shape: new RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20)),
                  primary: Color.fromARGB(255, 1, 34, 3),
                  onPrimary: Colors.white,
                  elevation: 20,
                  shadowColor: Colors.black),
              onPressed: changepass,
              child: Text(
                "NEXT",
                style: TextStyle(
                  fontWeight: FontWeight.w700,
                  color: Colors.white,
                ),
              ),
            ),
          ),
        ]));
  }
}
    

      // child: Card(
      //   color: Color.fromARGB(255, 199, 190, 190),
      //   child: Column(
      //     mainAxisSize: MainAxisSize.min,
      //     children: <Widget>[
      //       const ListTile(
      //         title: Text(
      //           "Reset Password",
      //           style: TextStyle(
      //             color: Color.fromARGB(255, 1, 34, 3),
      //             fontSize: 14,
      //             fontWeight: FontWeight.w700,
      //           ),
      //         ),
      //         subtitle:
      //             Text('We' 've sent reset password to your email account..'),
      //       ),
      //       SizedBox(
      //         width: MediaQuery.of(context).size.width * 0.5,
      //         height: 40,
      //         child: Container(
      //           child: Material(
      //             borderRadius: BorderRadius.circular(20),
      //             color: Colors.transparent,
      //             child: ElevatedButton(
      //               style: ElevatedButton.styleFrom(
      //                   shape: new RoundedRectangleBorder(
      //                       borderRadius: BorderRadius.circular(20)),
      //                   primary: Color.fromARGB(255, 1, 34, 3),
      //                   onPrimary: Colors.white,
      //                   elevation: 20,
      //                   shadowColor: Colors.black),
      //               onPressed: changepass,
      //               child: Text(
      //                 "NEXT",
      //                 style: TextStyle(
      //                   fontWeight: FontWeight.w700,
      //                   color: Colors.white,
      //                 ),
      //               ),
      //             ),
      //           ),
      //           decoration: BoxDecoration(
      //             borderRadius: BorderRadius.circular(20),
      //             gradient: const LinearGradient(
      //               begin: Alignment.topRight,
      //               end: Alignment(0.9, 0.0),
      //               colors: <Color>[
      //                 Color.fromARGB(255, 1, 29, 24),
      //                 Color.fromARGB(255, 38, 95, 84),
      //               ],
      //             ),
      //           ),
      //         ),
     
