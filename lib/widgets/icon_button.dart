import 'package:flutter/material.dart';

IconButton iconButton(Icon icon, ontap) {
  return IconButton(
    icon: icon,
    onPressed: ontap,
    splashRadius: 18,
  );
}
