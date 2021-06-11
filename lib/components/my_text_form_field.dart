import 'package:flutter/material.dart';
import 'package:logodaedale/common/konstants.dart';

class MyTextFormField extends StatelessWidget {
  const MyTextFormField({
    Key? key,
    required this.title,
    required this.validator,
    required this.textInputType,
    required this.obscureText,
    // required this.validatorr,
  }) : super(key: key);
  final String title;
  // final Function validatorr;
  final String? Function(String?) validator;
  final TextInputType textInputType;
  final bool obscureText;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 5),
      height: kTextFieldHeight,
      padding: EdgeInsets.symmetric(horizontal: 10),
      width: double.infinity,
      decoration: BoxDecoration(
        color: Colors.grey.shade300,
        borderRadius: BorderRadius.circular(15),
        border: Border.all(color: Colors.grey.shade600, width: 2),
      ),
      child: TextFormField(
        cursorColor: Colors.black,
        style: TextStyle(color: Colors.black),
        keyboardType: textInputType,
        obscureText: obscureText,
        decoration: InputDecoration(
          hintText: title,
          hintStyle: TextStyle(color: Colors.black),
          border: InputBorder.none,
        ),
        validator: validator,
      ),
    );
  }
}
