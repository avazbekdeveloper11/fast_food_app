import 'package:fast_food/screens/first_page/first_page.dart';
import 'package:flutter/material.dart';

class GenerateRoute {
  Route? generateRoute(RouteSettings settings) {
    final args = settings.arguments;

    switch (settings.name) {
      case '/':
        return MaterialPageRoute(builder: (context) => const FirstPage());
    }
  }
}
