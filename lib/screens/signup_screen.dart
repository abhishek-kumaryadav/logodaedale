import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/services.dart';
import 'package:logodaedale/components/my_drawer.dart';
import 'package:logodaedale/components/signup_screen/my_signup_form.dart';

class SignUpPage extends StatelessWidget {
  const SignUpPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size sz = MediaQuery.of(context).size;
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
                    icon: Icon(Icons.clear_rounded),
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
              // child: Center(
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
                    function: () {
                      Navigator.pushNamed(context, "/Home");
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
