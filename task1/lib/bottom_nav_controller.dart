import 'package:flutter/material.dart';
import 'package:task1/nav_pages/messages.dart';
import 'package:task1/nav_pages/passions.dart';
import 'package:task1/nav_pages/profile.dart';
import 'package:task1/nav_pages/swiperight%20.dart';


class BottomNavController extends StatefulWidget {
  const BottomNavController({super.key});

  @override
  State<BottomNavController> createState() => _BottomNavControllerState();
}

class _BottomNavControllerState extends State<BottomNavController> {
  final _pages = [
    SwipeRight(),
   const  Passions(),
   const  Messages(),
   const Profile(),
  ];

  int _seletedindex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Colors.red,
          currentIndex: _seletedindex,
          onTap: (value) {
            setState(() {
              _seletedindex = value;
            });
          },
          showSelectedLabels: false,
          showUnselectedLabels: false,
          
          items: [
            BottomNavigationBarItem(
              icon: Image.asset("assets/icons/swipe.png"),
              label: "home",
            ),
            BottomNavigationBarItem(
              icon: Image.asset("assets/icons/passions.png"),
              label: "home",
            ),
            BottomNavigationBarItem(
              icon: Image.asset("assets/icons/message.png"),
              label: "home",
            ),
            BottomNavigationBarItem(
              icon: Image.asset("assets/icons/people.png"),
              label: "home",
            ),
          ]),
      body: _pages[_seletedindex],
    );
  }
}
