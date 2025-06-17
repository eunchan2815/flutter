import 'package:first_flutter_app/feature/bell/bell_screen.dart';
import 'package:first_flutter_app/feature/bookmark/bookmark_screen.dart';
import 'package:first_flutter_app/feature/home/home_screen.dart';
import 'package:first_flutter_app/feature/profile/profile_screen.dart';
import 'package:first_flutter_app/feature/tab/custom/CustomBottomTabBar.dart';
import 'package:flutter/material.dart';

class CustomTabBarScreen extends StatefulWidget {
  @override
  _CustomTabBarScreenState createState() => _CustomTabBarScreenState();
}

class _CustomTabBarScreenState extends State<CustomTabBarScreen> {
  int _currentIndex = 0;
  final List<Widget> _pages = [
    HomeScreen(),
    BookmarkScreen(),
    BellScreen(),
    ProfileScreen()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_currentIndex],
      bottomNavigationBar: CustomBottomTabBar(
        currentIndex: _currentIndex,
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
      ),
    );
  }
}