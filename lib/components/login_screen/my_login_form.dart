import 'package:flutter/material.dart';
import 'package:flutter/material.dart';
import 'package:flutter_signin_button/flutter_signin_button.dart';
import 'package:logodaedale/components/custom_or_linebreak.dart';
import 'package:logodaedale/components/my_submit_button.dart';
import 'package:logodaedale/components/my_text_form_field.dart';

class MyLoginForm extends StatelessWidget {
  const MyLoginForm({
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
              title: "Email or username",
              validator: (value) {
                if (value == null) return null;
              },
              textInputType: TextInputType.text,
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
              child: MySubmitButton(
                title: "Login",
                function: () {},
              ),
            ),
            const CustomORLineBreak(),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 10),
              child: Row(
                children: <Widget>[
                  // TODO: implement half size
                  SizedBox(
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
