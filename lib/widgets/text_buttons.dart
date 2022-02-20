import 'package:fast_food/widgets/padding.dart';
import 'package:fast_food/widgets/texts.dart';
import 'package:flutter/material.dart';

InkWell textButton({text, ontap, color = Colors.green, double size = 15}) =>
    InkWell(
        child: textnormal(text, color: color, size: size),
        onTap: ontap,
        splashColor: Colors.transparent,
        highlightColor: Colors.transparent);

Padding text_button({text = 'Featured Partners', ontap}) {
  return paddingSymmetric(
    horizontal: 20,
    vertical: 15,
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        SizedBox(
          width: 222,
          child: textBold(text, size: 21, textalign: TextAlign.start),
        ),
        textButton(
          text: 'See all',
          color: Colors.green,
          size: 16,
          ontap: ontap,
        ),
      ],
    ),
  );
}
