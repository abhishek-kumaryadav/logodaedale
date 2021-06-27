import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:logodaedale/controllers/auth_controller.dart';
import 'package:logodaedale/screens/login_screen/components/my_login_form.dart';

class LoginScreen extends HookWidget {
  LoginScreen({Key? key}) : super(key: key);

  final usernameOREmailController = TextEditingController();
  final passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    final authControllerState = useProvider(authControllerProvider);
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  IconButton(
                    icon: const Icon(Icons.clear_rounded),
                    onPressed: () {
                      SystemNavigator.pop();
                    },
                  ),
                  Align(
                    alignment: Alignment.topRight,
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      child: const Text(
                        "Sign Up",
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              // child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  const Padding(
                    padding: EdgeInsets.symmetric(vertical: 10),
                    child: Text(
                      "Log in",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 22),
                    ),
                  ),
                  MyLoginForm(
                    passwordController: passwordController,
                    usernameOrEmailController: usernameOREmailController,
                    function: () async {
                      if (authControllerState != null) {
                        context.read(authControllerProvider.notifier).signOut();
                      }
                      await context
                          .read(authControllerProvider.notifier)
                          .signInWithEmailAndPassword(
                              usernameOREmailController.text,
                              passwordController.text);
                      if (authControllerState != null) {
                        Navigator.pushNamedAndRemoveUntil(
                            context, '/Home', (Route<dynamic> route) => false);
                      }
                    },
                  ),
                ],
              ),
              // ),
            ),
          ],
        ),
      ),
    );
  }
}
