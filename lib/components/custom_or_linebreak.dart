import 'package:flutter/material.dart';

class CustomORLineBreak extends StatelessWidget {
  const CustomORLineBreak({
    Key? key,
    // required this.sz,
  }) : super(key: key);

  // final Size sz;

  @override
  Widget build(BuildContext context) {
    Size sz = MediaQuery.of(context).size;
    return Row(
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
    );
  }
}
