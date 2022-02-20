import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';

import '../screens/location/location _page.dart';

class LocationProvider extends ChangeNotifier {
  String adress = 'Reset location';

  void updateAdress() async {
    Position position = await LocatoinPage().getGeoLocationPosition();
    LocatoinPage().location =
        'Lat: ${position.latitude} , Long: ${position.longitude}';
    LocatoinPage()
        .GetAddressFromLatLong(position)
        .then((value) => adress = value);
    notifyListeners();
  }
}
