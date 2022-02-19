import 'package:flutter/material.dart';

class FirstPageProvider {
  FirstPageProvider(context) {
    Future.delayed(const Duration(seconds: 3),
        () => Navigator.pushReplacementNamed(context, "/signIn"));
  }
}
