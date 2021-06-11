import 'package:flutter/widgets.dart';
import 'package:logodaedale/screens/login_screen.dart';
import 'package:logodaedale/screens/signup_screen.dart';

final Map<String, WidgetBuilder> routes = <String, WidgetBuilder>{
  "/Login": (BuildContext context) => LoginPage(),
  "/SignUp": (BuildContext context) => SignUpPage(),
};
