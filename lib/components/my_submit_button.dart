import 'package:flutter/material.dart';
import 'package:logodaedale/common/konstants.dart';

class MySubmitButton extends StatelessWidget {
  const MySubmitButton({
    Key? key,
    required this.title,
    required this.function,
  }) : super(key: key);
  final VoidCallback function;
  final String title;
  @override
  Widget build(BuildContext context) {
    return ConstrainedBox(
      constraints: const BoxConstraints(
        minHeight: kTextFieldHeight,
        minWidth: double.infinity,
      ),
      child: ElevatedButton(
        onPressed: function,
        child: Text(
          title,
          style: const TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
            fontSize: 17,
          ),
        ),
        style: ButtonStyle(
          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15),
            ),
          ),
        ),
      ),
    );
  }
}
