import 'package:e_comers_app_1/screens/Home.dart';
import 'package:e_comers_app_1/screens/profile.dart';
import 'package:e_comers_app_1/screens/searsh.dart';
import 'package:e_comers_app_1/screens/ticket_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:fluentui_icons/fluentui_icons.dart';

class Bottom_Bar extends StatefulWidget {
  const Bottom_Bar({super.key});

  @override
  State<Bottom_Bar> createState() => _Bottom_BarState();
}

class _Bottom_BarState extends State<Bottom_Bar> {
  var index1 = 0;
  static final List<Widget> _widgetop = <Widget>[
    Home(),
    SearshScreen(),
    TicktScreen(),
    ProfileScreen(),
  ];

  void onItemTap(int index) {
    setState(() {
      index1 = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: _widgetop[index1],
      ),
      bottomNavigationBar: BottomNavigationBar(
          currentIndex: index1,
          type: BottomNavigationBarType.fixed,
          onTap: onItemTap,
          elevation: 10,
          showSelectedLabels: false,
          showUnselectedLabels: false,
          selectedItemColor: Colors.blueGrey,
          unselectedItemColor: const Color(0xFF526480),
          // ignore: prefer_const_literals_to_create_immutables
          items: [
            BottomNavigationBarItem(
                icon: Icon(FluentSystemIcons.ic_fluent_home_regular),
                activeIcon: Icon(FluentSystemIcons.ic_fluent_home_regular),
                label: "Home"),
            BottomNavigationBarItem(
                icon: Icon(FluentSystemIcons.ic_fluent_search_regular),
                activeIcon: Icon(FluentSystemIcons.ic_fluent_search_regular),
                label: "Home"),
            BottomNavigationBarItem(
                icon: Icon(FluentSystemIcons.ic_fluent_airplane_regular),
                activeIcon: Icon(FluentSystemIcons.ic_fluent_airplane_regular),
                label: "Home"),
            BottomNavigationBarItem(
                icon: Icon(FluentSystemIcons.ic_fluent_person_add_regular),
                activeIcon:
                    Icon(FluentSystemIcons.ic_fluent_person_add_regular),
                label: "Home"),
          ]),
    );
  }
}
