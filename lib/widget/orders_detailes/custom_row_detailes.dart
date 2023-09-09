import 'package:flutter/material.dart';

class CustomRowDetailes extends StatelessWidget {
  final String textName;
  final String textValue;

  const CustomRowDetailes(
      {super.key, required this.textName, required this.textValue});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(textName),
        Flexible(child: Text(textValue)),
      ],
    );
  }
}
