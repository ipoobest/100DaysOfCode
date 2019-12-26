import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_basic/slider_state.dart';

class MySlider extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    final sliderState = Provider.of<SliderState>(context);
    return Slider(
      min: 0,
      max: 1,
      value: sliderState.sliderValue,
      onChanged: (newValue) {
       sliderState.sliderValue = newValue;
      },
    );
  }
}