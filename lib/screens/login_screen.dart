import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:logodaedale/components/login_screen/my_login_form.dart';
import 'package:logodaedale/components/signup_screen/my_signup_form.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size sz = MediaQuery.of(context).size;
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
                    icon: Icon(Icons.clear_rounded),
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
                      child: Text(
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
                    padding: const EdgeInsets.symmetric(vertical: 10),
                    child: Text(
                      "Log in",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 22),
                    ),
                  ),
                  MyLoginForm(),
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
