import 'package:flutter/material.dart';
import 'package:flutter_signin_button/flutter_signin_button.dart';
import 'package:logodaedale/components/my_submit_button.dart';
import 'package:logodaedale/components/my_text_form_field.dart';

class MySignupForm extends StatelessWidget {
  const MySignupForm({
    Key? key,
    // required this.sz,
  }) : super(key: key);

  // final Size sz;

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
              title: "Name",
              validator: (value) {
                if (value == null) return null;
              },
              textInputType: TextInputType.name,
              obscureText: false,
            ),
            MyTextFormField(
              title: "Email",
              validator: (value) {
                if (value == null) return null;
              },
              textInputType: TextInputType.emailAddress,
              obscureText: false,
            ),
            MyTextFormField(
              title: "Password",
              validator: (value) {
                if (value == null) return null;
              },
              textInputType: TextInputType.text,
              obscureText: true,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 20),
              child: const MySubmitButton(title: "Create Account"),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Container(
                  height: 2,
                  width: sz.width * 0.34,
                  color: Colors.grey,
                ),
                Text(
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