import 'package:fast_food/router/router.dart';
import 'package:fast_food/screens/location/location%20_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({Key? key}) : super(key: key);

  final _ruter = GenerateRoute();
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Fast food",
      initialRoute: "/",
      onGenerateRoute: _ruter.generateRoute,
    );
  }
}
