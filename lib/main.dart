import 'package:augmaze/screens/chatPage/view/chatPage.view.dart';
import 'package:augmaze/screens/explorePage/view/explorePage.view.dart';
import 'package:augmaze/screens/home/view/homePage.view.dart';
import 'package:augmaze/screens/profilePage/view/profilePage.view.dart';
import 'package:augmaze/screens/settingsPage/view/settingsPage.view.dart';
import 'package:augmaze/utils/theme.utils.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Augmaze',
      theme: AppTheme.theme,
      home: MainScreen(),
    );
  }
}

class MainScreen extends StatefulWidget {
  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int _selectedIndex = 0;
  final List<Widget> _pages = [
    HomePage(),
    ExplorePage(),
    ChatPage(),
    SettingsPage(),
    ProfilePage(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.explore), label: 'Explore'),
          BottomNavigationBarItem(icon: Icon(Icons.chat), label: 'Chat'),
          BottomNavigationBarItem(icon: Icon(Icons.settings), label: 'Settings'),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Profile'),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Theme.of(context).primaryColorDark,
        unselectedItemColor: Colors.blueGrey,
        backgroundColor: Theme.of(context).colorScheme.primaryFixedDim,
        onTap: _onItemTapped,
      ),
    );
  }
}