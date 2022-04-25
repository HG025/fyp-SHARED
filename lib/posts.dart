import 'package:flutter/material.dart';
import 'package:convex_bottom_bar/convex_bottom_bar.dart';
import 'package:fyp/change_new_password.dart';
import 'package:fyp/charts.dart';
import 'package:fyp/create_post.dart';
import 'package:fyp/forgot_password.dart';
import 'package:fyp/home_page.dart';
import 'package:fyp/login.dart';
import 'package:fyp/main.dart';
import 'package:fyp/maps.dart';
import 'package:fyp/notification.dart';
import 'package:fyp/otp_page.dart';
import 'package:fyp/screen.dart';
import 'package:fyp/search.dart';
import 'package:fyp/signup.dart';
import 'otp_page.dart';

class NavBar extends StatefulWidget {
  const NavBar({Key? key}) : super(key: key);

  @override
  State<NavBar> createState() => _NavBarState();
}

class _NavBarState extends State<NavBar> {
  int selectedPage = 0;
  final _pageOptions = [
    posts(),
    maps(),
    create_post(),
    charts(),
    search(),
  ];

  void NavBar1() {
    Navigator.push(
        context, MaterialPageRoute(builder: ((context) => NavBar())));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        child: AppBar(
          actions: [IconButton(onPressed: () {}, icon: Icon(Icons.menu))],
          flexibleSpace: Container(
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topRight,
                end: Alignment(0.7, 0.0),
                colors: <Color>[
                  Color.fromARGB(255, 1, 29, 24),
                  Color.fromARGB(255, 38, 95, 84),
                ],
              ),
            ),
          ),
          foregroundColor: Color.fromARGB(255, 199, 190, 190),
        ),
        preferredSize: Size.fromHeight(40.0),
      ),
      bottomNavigationBar: ConvexAppBar(
        backgroundColor: Color.fromARGB(255, 1, 29, 24),
        style: TabStyle.fixedCircle,
        items: [
          TabItem(icon: Icons.home),
          TabItem(icon: Icons.maps_ugc),
          TabItem(icon: Icons.add),
          TabItem(icon: Icons.pie_chart),
          TabItem(icon: Icons.search),
        ],
        initialActiveIndex: 0,
        // onTap: (int i) => print('click index=$i'),
        onTap: (int index) {
          setState(() {
            selectedPage = index;
          });
        },
      ),
      body: _pageOptions[selectedPage],
      backgroundColor: Color.fromARGB(255, 199, 190, 190),
    );
  }
}

class posts extends StatefulWidget {
  const posts({Key? key}) : super(key: key);

  @override
  State<posts> createState() => _postsState();
}

class _postsState extends State<posts> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [Text("hdsjkdka")],
      ),
    );
  }
}
