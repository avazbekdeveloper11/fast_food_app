import 'package:fast_food/screens/first_page/first_page.dart';
import 'package:fast_food/screens/home_page/home_page.dart';
import 'package:fast_food/screens/location/location%20_page.dart';
import 'package:fast_food/screens/signIn.page/signIn.dart';
import 'package:fast_food/screens/sign_up/sign_up.dart';
import 'package:fast_food/screens/single_page/single_page.dart';
import 'package:flutter/material.dart';

class GenerateRoute {
  Route? generateRoute(RouteSettings settings) {
    final args = settings.arguments;

    switch (settings.name) {
      case '/':
        return MaterialPageRoute(builder: (context) => const FirstPage());
      case '/signIn':
        return MaterialPageRoute(builder: (context) => SignIn());
      case '/signUp':
        return MaterialPageRoute(builder: (context) => SignUp());
      case '/home':
        return MaterialPageRoute(builder: (context) => HomePage());
      case '/singlePage':
        return MaterialPageRoute(builder: (context) => const SinglePage());
    }
  }
}
