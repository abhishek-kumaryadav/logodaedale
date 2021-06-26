import 'package:flutter/material.dart';
import 'package:logodaedale/screens/components/my_drawer.dart';
import 'package:logodaedale/screens/login_screen/login_screen.dart';
import 'package:logodaedale/screens/play_screen/play_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _currentIndex = 0;
  final _pageOptions = [PlayScreen(), LoginScreen()];
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
