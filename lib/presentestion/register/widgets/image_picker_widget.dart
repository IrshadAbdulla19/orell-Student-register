import 'package:flutter/material.dart';
import 'package:student_register/core/constants.dart';

import 'select_image_widget.dart';

class ImagePickerWidget extends StatelessWidget {
  const ImagePickerWidget(
      {super.key, required this.size, required this.headText});
  final Size size;
  final String headText;
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
        Container(
            alignment: Alignment.center,
            width: size.width * 1,
            margin: EdgeInsets.all(size.width * 0.006),
            padding: EdgeInsets.all(size.width * 0.02),
            decoration: BoxDecoration(border: Border.all(color: kBlack)),
            child: Row(
              children: [
                SelectImage(
                  size: size,
                )
              ],
            )),
        kHeight25
      ],
    );
  }
}
