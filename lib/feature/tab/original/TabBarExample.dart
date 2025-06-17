import 'package:first_flutter_app/feature/bell/bell_screen.dart';
import 'package:first_flutter_app/feature/bookmark/bookmark_screen.dart';
import 'package:first_flutter_app/feature/home/home_screen.dart';
import 'package:first_flutter_app/feature/profile/profile_screen.dart';
import 'package:first_flutter_app/feature/tab/original/Tabitem.dart';
import 'package:first_flutter_app/shared/IconExt.dart';
import 'package:flutter/material.dart';

class TabBarExample extends StatefulWidget {
  const TabBarExample({super.key});

  @override
  State<TabBarExample> createState() => _TabBarExampleState();
}

class _TabBarExampleState extends State<TabBarExample> {
  int _selectedIndex = 0;

  final List<Widget> _pages = [
    HomeScreen(),
    BellScreen(),
    BookmarkScreen(),
    ProfileScreen(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(index: _selectedIndex, children: _pages),
      bottomNavigationBar: Theme(
        data: Theme.of(context).copyWith(
          splashColor: Colors.transparent,
          highlightColor: Colors.transparent,
        ),
        child: BottomNavigationBar(
          currentIndex: _selectedIndex,
          onTap: _onItemTapped,
          type: BottomNavigationBarType.fixed,
          selectedItemColor: Color(0xFF000a3c),
          unselectedItemColor: Colors.grey.shade700,
          selectedLabelStyle: TextStyle(fontWeight: FontWeight.w600),
          unselectedLabelStyle: TextStyle(fontWeight: FontWeight.normal),
          items: [
            TabItem(icon: AppIcon.home, isSelected: _selectedIndex == 0),
            TabItem(icon: AppIcon.boomMark, isSelected: _selectedIndex == 1),
            TabItem(icon: AppIcon.bell, isSelected: _selectedIndex == 2),
            TabItem(icon: AppIcon.profile, isSelected: _selectedIndex == 3)
          ],
        ),
      ),
    );
  }
}
