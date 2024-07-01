import 'package:aquariumapp/screens/about.dart';
import 'package:aquariumapp/screens/control.dart';
import 'package:aquariumapp/screens/dashboard.dart';
import 'package:aquariumapp/screens/notification.dart';
import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _currentIndex = 0;

  final List<Widget> _screens = [
    DashboardScreen(),
    NotifScreen(),
    ControlScreen(),
    AboutScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _screens[_currentIndex],
      bottomNavigationBar: Container(
        decoration: BoxDecoration(color: Colors.white, boxShadow: [
          BoxShadow(blurRadius: 20, color: Colors.black.withOpacity(.1))
        ]),
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 15.0, vertical: 8),
          child: GNav(
            gap: 8,
            activeColor: Colors.white,
            iconSize: 35,
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
            duration: Duration(milliseconds: 800),
            tabBackgroundColor: Colors.blue,
            tabs: [
              GButton(
                icon: Icons.dashboard,
                text: 'Dashboard',
              ),
              GButton(
                icon: Icons.notifications,
                text: 'Notifications',
              ),
              GButton(
                icon: Icons.control_camera,
                text: 'Control',
              ),
              GButton(
                icon: Icons.person,
                text: 'About',
              ),
            ],
            selectedIndex: _currentIndex,
            onTabChange: (index) {
              setState(() {
                _currentIndex = index;
              });
            },
          ),
        ),
      ),
    );
  }
}
