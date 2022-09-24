import 'package:flutter/material.dart';
import 'package:kabar/utils/colors.dart';
import 'package:kabar/persentation/pages/Profile.dart';
import 'package:kabar/persentation/pages/menu/bookmark.dart';
import 'package:kabar/persentation/pages/menu/explore.dart';
import 'package:kabar/persentation/pages/menu/home.dart';

class Menu extends StatelessWidget {
  const Menu({super.key});

  static const String _title = 'Flutter Code Sample';

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyStatefulWidget(),
    );
  }
}

class MyStatefulWidget extends StatefulWidget {
  const MyStatefulWidget({super.key});

  @override
  State<MyStatefulWidget> createState() => _MyStatefulWidgetState();
}

class _MyStatefulWidgetState extends State<MyStatefulWidget> {
  int _selectedIndex = 0;
  List page = [
    const Home(),
    const Explore(),
    const Bookmark(),
    const Profile()
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: page[_selectedIndex],
      bottomNavigationBar: bottomNav(),
    );
  }

  BottomNavigationBar bottomNav() {
    return BottomNavigationBar(
      type: BottomNavigationBarType.fixed,
      items: <BottomNavigationBarItem>[
        BottomNavigationBarItem(
          icon: Image.asset(
            "assets/images/home.png",
            width: 20,
            color: _selectedIndex == 0 ? primary : body_text,
          ),
          label: 'Home',
          backgroundColor: Colors.white,
        ),
        BottomNavigationBarItem(
          icon: Image.asset(
            "assets/images/explore.png",
            width: 23,
            color: _selectedIndex == 1 ? primary : body_text,
          ),
          label: 'Explore',
          backgroundColor: Colors.white,
        ),
        BottomNavigationBarItem(
          icon: Image.asset(
            "assets/images/bookmark.png",
            width: 20,
            color: _selectedIndex == 2 ? primary : body_text,
          ),
          label: 'Bookmark',
          backgroundColor: Colors.white,
        ),
        BottomNavigationBarItem(
          icon: Image.asset(
            "assets/images/profile.png",
            width: 20,
            color: _selectedIndex == 3 ? primary : body_text,
          ),
          label: 'Profile',
          backgroundColor: Colors.white,
        ),
      ],
      currentIndex: _selectedIndex,
      selectedItemColor: primary,
      unselectedItemColor: body_text,
      showUnselectedLabels: true,
      selectedFontSize: 12,
      unselectedFontSize: 12,
      onTap: _onItemTapped,
    );
  }
}
