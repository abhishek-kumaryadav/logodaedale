import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:logodaedale/models/theme_manager.dart';

class MyDrawer extends ConsumerWidget {
  const MyDrawer({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context, ScopedReader watch) {
    final Size sz = MediaQuery.of(context).size;
    final _themeProvider = watch(themeProvider);
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
                    value: _themeProvider.darkMode,
                    onChanged: (bool value) {
                      _themeProvider.switchTheme();
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
