import 'package:fast_food/provider/locationProvider.dart';
import 'package:flutter/material.dart';

class ShowPasswordProvider extends ChangeNotifier {
  bool show = true;
  ShowPasswordProvider(){
    LocationProvider().updateAdress();
  }
  void showPassword() {
    show = !show;
    notifyListeners();
  }

  
}
