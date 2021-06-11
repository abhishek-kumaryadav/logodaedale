import 'package:flutter/material.dart';
import 'package:logodaedale/models/theme_manager.dart';
import 'package:logodaedale/components/my_drawer.dart';
import 'package:provider/provider.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  // final bool _switchValue = true;
  @override
  Widget build(BuildContext context) {
    ThemeManager _themeManger = Provider.of<ThemeManager>(context);
    Size sz = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(),
      drawer: const MyDrawer(),
      body: Text("HELLO WORLD"),
    );
  }
}
