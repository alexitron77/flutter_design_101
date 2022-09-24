import 'package:flutter/material.dart';
import 'package:line_icons/line_icons.dart';
import 'package:thatshake/pages/searchPage.dart';

import 'pages/homepage.dart';
import 'utils/styles.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int _selectedIndex = 0;

  List<Widget> screens = [const HomePage(), const SearchPage()];

  selectIndex(int index) {
    setState(() => _selectedIndex = index);
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primaryColor: Styles.primaryColor,
      ),
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Styles.primaryColor,
          title: const Text("Flight app"),
        ),
        body: screens[_selectedIndex],
        bottomNavigationBar: BottomNavigationBar(
          showSelectedLabels: false,
          showUnselectedLabels: false,
          onTap: selectIndex,
          selectedItemColor: Styles.primaryColor,
          elevation: 10,
          unselectedItemColor: Styles.secondaryColor,
          currentIndex: _selectedIndex,
          items: const [
            BottomNavigationBarItem(label: "home", icon: Icon(LineIcons.home)),
            BottomNavigationBarItem(label: "search", icon: Icon(LineIcons.search))
          ],
        ),
      ),
    );
  }
}
