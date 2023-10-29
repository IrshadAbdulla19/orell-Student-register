import 'package:flutter/material.dart';
import 'package:student_register/core/constants.dart';

class FillingFileds extends StatelessWidget {
  const FillingFileds(
      {super.key,
      required this.controller,
      required this.fill,
      required this.headText,
      required this.hintText,
      required this.maxLines});

  final TextEditingController controller;
  final bool fill;
  final String headText;
  final String hintText;
  final int maxLines;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          headText,
          style: headTextStyle,
        ),
        kHeight10,
        TextFormField(
          validator: (value) {
            if (value == null || value.isEmpty) {
              return "Please Fill the here";
            }
            return null;
          },
          maxLines: maxLines,
          controller: controller,
          decoration: InputDecoration(
              filled: fill,
              fillColor: kFillClrBlue.shade300,
              hintText: hintText,
              hintStyle: hintTextStyle,
              border: OutlineInputBorder()),
        ),
      ],
    );
  }
}
