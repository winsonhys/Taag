import 'package:flutter/material.dart';

class AddressProvider extends ChangeNotifier {
  int postal;
  String line1;
  String line2;

  String _country = "Singapore";
  String get country => _country;

  String _state = "SGP";
  String get state => _state;
}
