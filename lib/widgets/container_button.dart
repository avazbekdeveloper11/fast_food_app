import 'package:fast_food/components/companents.dart';
import 'package:fast_food/constant/sizeConfig.dart';
import 'package:fast_food/widgets/padding.dart';
import 'package:fast_food/widgets/texts.dart';
import 'package:flutter/material.dart';

InkWell containerButton(text, ontap) {
  return InkWell(
    child: Container(
      height: getH(48),
      width: getW(335),
      child: Center(child: textBold(text,color: Colors.white)),
      decoration: BoxDecoration(
        color: const Color(0xFF22A45D),
        borderRadius: radiusCircular(8),
      ),
    ),
    onTap: ontap,
  );
}

InkWell button_sign(
    {Color color = const Color(0xFF395998),
    img = "assets/logo/with_google.png",
    logo = "assets/logo/google.png",
    ontap}) {
  return InkWell(
    child: Container(
      decoration: BoxDecoration(borderRadius: radiusCircular(8), color: color),
      height: getH(48),
      width: getW(335),
      child: paddingOnly(
        left: 18,
        right: 74,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            SizedBox(
                width: getW(28), height: getW(28), child: Image.asset(logo)),
            SizedBox(width: getW(187), child: Image.asset(img)),
          ],
        ),
      ),
    ),
    onTap: ontap,
  );
}
