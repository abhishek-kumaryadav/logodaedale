import 'package:flutter/material.dart';
import 'package:logodaedale/components/my_drawer.dart';
import 'package:logodaedale/screens/login_screen.dart';
import 'package:logodaedale/screens/play_screen.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _currentIndex = 0;
  final _pageOptions = [PlayPage(), LoginPage()];
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        if (_currentIndex == 0) return true;
        setState(() {
          _currentIndex = 0;
        });
        return false;
      },
      child: Scaffold(
          appBar: AppBar(),
          drawer: const MyDrawer(),
          body: _pageOptions[_currentIndex],
          bottomNavigationBar: BottomNavigationBar(
            currentIndex: _currentIndex,
            onTap: (newIndex) {
              setState(() {
                _currentIndex = newIndex;
              });
            },
            items: const <BottomNavigationBarItem>[
              BottomNavigationBarItem(
                icon: Icon(
                  Icons.home_outlined,
                ),
                label: "Home",
                activeIcon: Icon(Icons.home_filled),
              ),
              BottomNavigationBarItem(
                  activeIcon: Icon(Icons.login),
                  label: "Login",
                  icon: Icon(Icons.login_outlined)),
            ],
          )),
    );
  }
}
