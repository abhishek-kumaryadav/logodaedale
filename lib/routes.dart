import 'package:flutter/widgets.dart';
import 'package:logodaedale/screens/debug_screen.dart';
import 'package:logodaedale/screens/home_screen/home_screen.dart';
import 'package:logodaedale/screens/login_screen/login_screen.dart';
import 'package:logodaedale/screens/signup_screen/signup_screen.dart';

final Map<String, WidgetBuilder> routes = <String, WidgetBuilder>{
  "/Login": (BuildContext context) => LoginScreen(),
  "/SignUp": (BuildContext context) => SignUpScreen(),
  "/Home": (BuildContext context) => HomeScreen(),
  "/Debug": (BuildContext context) => DebugScreen(),
};
