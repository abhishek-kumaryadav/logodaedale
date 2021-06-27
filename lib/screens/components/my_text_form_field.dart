import 'package:flutter/material.dart';
import 'package:logodaedale/common/konstants.dart';

class MyTextFormField extends StatelessWidget {
  const MyTextFormField({
    Key? key,
    required this.title,
    required this.validator,
    this.textInputType = TextInputType.text,
    this.obscureText = false,
    required this.controller,
  }) : super(key: key);
  final String title;
  final TextInputType textInputType;
  final bool obscureText;
  final FormFieldValidator<String> validator;
  final TextEditingController controller;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 5),
      height: kTextFieldHeight,
      padding: const EdgeInsets.symmetric(horizontal: 10),
      width: double.infinity,
      decoration: BoxDecoration(
        color: Colors.grey.shade300,
        borderRadius: BorderRadius.circular(15),
        border: Border.all(color: Colors.grey.shade600, width: 2),
      ),
      child: TextFormField(
        autovalidateMode: AutovalidateMode.always,
        cursorColor: Colors.black,
        style: const TextStyle(color: Colors.black),
        keyboardType: textInputType,
        obscureText: obscureText,
        decoration: InputDecoration(
          hintText: title,
          hintStyle: const TextStyle(color: Colors.black),
          border: InputBorder.none,
        ),
        validator: validator,
        controller: controller,
      ),
    );
  }
}
