import 'package:fast_food/constant/sizeConfig.dart';
import 'package:flutter/material.dart';

Padding paddingOnly(
        {required child,
        double right = 0,
        double left = 0,
        double top = 0,
        double bottom = 0}) =>
    Padding(
      padding: EdgeInsets.only(
        right: getW(right),
        left: getW(left),
        top: getH(top),
        bottom: getH(bottom),
      ),
      child: child,
    );

Padding paddingSymmetric(
        {required child, double horizontal = 0, double vertical = 0}) =>
    Padding(
      padding: EdgeInsets.symmetric(
          horizontal: getW(horizontal), vertical: getH(vertical)),
      child: child,
    );
