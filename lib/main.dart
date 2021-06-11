import 'package:flutter/material.dart';
import 'package:logodaedale/models/theme_manager.dart';
import 'package:logodaedale/routes.dart';
import 'package:logodaedale/screens/home_screen.dart';
import 'package:logodaedale/screens/signup_screen.dart';
// import 'package:logodaedale/ui/global/theme/theme_manager.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      // builder: (_,__)=>ThemeManager(),
      providers: [
        ChangeNotifierProvider<ThemeManager>(
            create: (context) => ThemeManager()),
      ],
      child: Consumer<ThemeManager>(builder: (context, manager, _) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          title: "LOGODAEDALE",
          theme: manager.themeData,
          // home: const MyHomePage(title: 'Flutter demo'),
          initialRoute: '/SignUp',
          routes: routes,
          // home: SignUpPage(),
        );
      }),
    );
  }
}
