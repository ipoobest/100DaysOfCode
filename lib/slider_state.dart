import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

// SliderState
class SliderState with ChangeNotifier {
  double _sliderValue = 0;

  double get sliderValue => _sliderValue;

  set sliderValue(double newValue) {
    _sliderValue = newValue;
    notifyListeners();
  }
}
