import 'package:flutter/material.dart';

class charts extends StatefulWidget {
  const charts({Key? key}) : super(key: key);

  @override
  State<charts> createState() => _chartsState();
}

class _chartsState extends State<charts> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(children: [
        Text("yeh charts ha"),
      ]),
    );
  }
}
