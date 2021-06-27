import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/services.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:logodaedale/controllers/auth_controller.dart';
import 'package:logodaedale/screens/components/my_drawer.dart';
import 'package:logodaedale/screens/signup_screen/components/my_signup_form.dart';

class SignUpScreen extends HookWidget {
  SignUpScreen({Key? key}) : super(key: key);

  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController usernameController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    final authControllerState = useProvider(authControllerProvider);
    return Scaffold(
      appBar: AppBar(),
      drawer: MyDrawer(),
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
                        Navigator.pushNamed(context, '/Login');
                      },
                      child: const Text(
                        "Login",
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  const Padding(
                    padding: EdgeInsets.symmetric(vertical: 10),
                    child: Text(
                      "Create your Profile",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 22),
                    ),
                  ),
                  MySignupForm(
                    emailController: emailController,
                    passwordController: passwordController,
                    usernameController: usernameController,
                    function: () async {
                      if (authControllerState != null) {
                        context.read(authControllerProvider.notifier).signOut();
                      }
                      await context
                          .read(authControllerProvider.notifier)
                          .createUserWithEmailAndPassword(
                              emailController.text, passwordController.text);
                      Navigator.pushNamedAndRemoveUntil(
                          context, '/Home', (Route<dynamic> route) => false);
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
