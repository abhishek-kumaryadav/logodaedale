import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:logodaedale/common/app_themes.dart';
import 'package:logodaedale/controllers/theme_controller.dart';
import 'package:logodaedale/routes.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(ProviderScope(child: const MyApp()));
}

class MyApp extends HookWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _darkMode = useProvider(themeControllerProvider);
    // debugPrint("Main: ${_darkMode}");
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "LOGODAEDALE",
      theme: _darkMode
          ? appThemeData[AppTheme.Dark]
          : appThemeData[AppTheme.Default],
      initialRoute: '/SignUp',
      routes: routes,
    );
  }
}
