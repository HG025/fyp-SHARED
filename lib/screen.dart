import 'package:flutter/material.dart';

class screen extends StatefulWidget {
  const screen({Key? key}) : super(key: key);

  @override
  State<screen> createState() => _screenState();
}

class _screenState extends State<screen> {
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
      ]),
    );
  }
}
