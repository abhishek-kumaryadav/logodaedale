import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:logodaedale/common/app_themes.dart';
import 'package:logodaedale/controllers/auth_controller.dart';
import 'package:logodaedale/controllers/theme_controller.dart';
import 'package:logodaedale/routes.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const ProviderScope(child: MyApp()));
}

class MyApp extends HookWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final themeControllerState = useProvider(themeControllerProvider);
    final authControllerState = useProvider(authControllerProvider);
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "LOGODAEDALE",
      theme: themeControllerState
          ? appThemeData[AppTheme.Dark]
          : appThemeData[AppTheme.Default],
      initialRoute: '/SignUp',
      routes: routes,
    );
  }
}
