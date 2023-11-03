import 'package:flutter/material.dart';
import 'package:flutter_iconly/flutter_iconly.dart';

import 'home/screens/home_screen.dart';

class BottomBarScreen extends StatefulWidget {
  const BottomBarScreen({super.key});

  @override
  State<BottomBarScreen> createState() => _BottomBarScreenState();
}

class _BottomBarScreenState extends State<BottomBarScreen> {
  int selectedIndex = 0;

  final List screens = [
    const HomeScreen(),
    const HomeScreen(),
    const HomeScreen(),
    const HomeScreen(),
    const HomeScreen(),
  ];

  void selectedScreen(int index) {
    setState(() {
      selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screens[selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        elevation: 20,
        unselectedItemColor:
            Theme.of(context).colorScheme.primary.withOpacity(0.5),
        selectedItemColor: Theme.of(context).colorScheme.secondary,
        backgroundColor: Colors.white,
        showSelectedLabels: true,
        showUnselectedLabels: true,
        unselectedFontSize: 14,
        type: BottomNavigationBarType.fixed,
        currentIndex: selectedIndex,
        onTap: selectedScreen,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
              icon: Padding(
                padding: EdgeInsets.symmetric(vertical: 5.0),
                child: Icon(IconlyLight.search),
              ),
              label: 'Explore'),
          BottomNavigationBarItem(
              icon: Padding(
                padding: EdgeInsets.symmetric(vertical: 5.0),
                child: Icon(IconlyLight.heart),
              ),
              label: 'Wishlists'),
          BottomNavigationBarItem(
            icon: Padding(
              padding: EdgeInsets.symmetric(vertical: 5.0),
              child: Icon(IconlyLight.location),
            ),
            label: "Trips",
          ),
          BottomNavigationBarItem(
              icon: Padding(
                padding: EdgeInsets.symmetric(vertical: 5.0),
                child: Icon(IconlyLight.message),
              ),
              label: 'Inbox'),
          BottomNavigationBarItem(
              icon: Padding(
                padding: EdgeInsets.symmetric(vertical: 5.0),
                child: Icon(IconlyLight.profile),
              ),
              label: 'Profile'),
        ],
      ),
    );
  }
}
