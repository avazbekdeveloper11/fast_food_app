import 'package:fast_food/provider/locationProvider.dart';
import 'package:fast_food/screens/location/location%20_page.dart';
import 'package:flutter/material.dart';

class FirstPageProvider {
  FirstPageProvider(context) {
    Future.delayed(const Duration(seconds: 3),
        () => Navigator.pushReplacementNamed(context, "/signIn"));
  }
}
