import 'package:flutter/material.dart';
import 'package:flutter_signin_button/flutter_signin_button.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:logodaedale/screens/components/my_submit_button.dart';
import 'package:logodaedale/screens/components/my_text_form_field.dart';

class MySignupForm extends StatelessWidget {
  MySignupForm({
    Key? key,
    required this.function,
    required this.usernameController,
    required this.emailController,
    required this.passwordController,
    // required this.sz,
  }) : super(key: key);

  // final Size sz;
  final VoidCallback function;
  final usernameController;
  final emailController;
  final passwordController;

  final credentials = Credentials();
  @override
  Widget build(BuildContext context) {
    Size sz = MediaQuery.of(context).size;

    return Container(
      // TODO: dynamic width
      width: sz.width * 0.76,
      child: Form(
        child: Column(
          children: <Widget>[
            MyTextFormField(
              title: "Username",
              validator: (value) {
                if (value == null) return null;
              },
              controller: usernameController,
            ),
            MyTextFormField(
              title: "Email",
              validator: (value) {
                if (value == null) return null;
              },
              textInputType: TextInputType.emailAddress,
              controller: emailController,
            ),
            MyTextFormField(
              title: "Password",
              validator: (value) {
                if (value == null) return null;
              },
              textInputType: TextInputType.text,
              obscureText: true,
              controller: passwordController,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 20),
              child: MySubmitButton(
                title: "Create Account",
                function: function,
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Container(
                  height: 2,
                  width: sz.width * 0.34,
                  color: Colors.grey,
                ),
                const Text(
                  'OR',
                  style: TextStyle(color: Colors.grey),
                ),
                Container(
                  height: 2,
                  width: sz.width * 0.34,
                  color: Colors.grey,
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 10),
              child: Row(
                children: <Widget>[
                  // TODO: implement half size
                  Container(
                    width: sz.width * .37,
                    child: SignInButton(
                      Buttons.Google,
                      text: "Google",
                      onPressed: () {},
                    ),
                  ),
                  SizedBox(width: 5),
                  Expanded(
                    child: SignInButton(
                      Buttons.Facebook,
                      text: "Facebook",
                      onPressed: () {},
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class Credentials {
  String email;
  String password;
  Credentials({this.email = "defaultValue", this.password = "defaultValue"});
}
