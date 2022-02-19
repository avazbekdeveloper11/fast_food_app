import 'package:fast_food/widgets/texts.dart';
import 'package:flutter/material.dart';

InkWell textButton(text, ontap, {color = Colors.green}) => InkWell(
    child: textnormal(text, color: color),
    onTap: ontap,
    splashColor: Colors.transparent,
    highlightColor: Colors.transparent);
