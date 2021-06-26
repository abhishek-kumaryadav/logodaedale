import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:logodaedale/controllers/theme_controller.dart';

class MyDrawer extends HookWidget {
  const MyDrawer({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Size sz = MediaQuery.of(context).size;
    final _darkMode = useProvider(themeControllerProvider);

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
                    value: _darkMode,
                    onChanged: (bool value) {
                      context
                          .read(themeControllerProvider.notifier)
                          .switchTheme();
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
