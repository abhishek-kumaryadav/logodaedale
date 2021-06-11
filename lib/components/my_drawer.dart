import 'package:flutter/material.dart';
import 'package:logodaedale/models/theme_manager.dart';
import 'package:provider/provider.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Size sz = MediaQuery.of(context).size;
    ThemeManager _themeManger = Provider.of<ThemeManager>(context);
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          Container(
            width: double.infinity,
            height: sz.height * 0.4,
            decoration: BoxDecoration(color: Colors.brown.shade50),
            child: SafeArea(
              child: Stack(
                children: [
                  Switch(
                    value: _themeManger.darkMode,
                    onChanged: (bool value) {
                      _themeManger.switchTheme();
                    },
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
