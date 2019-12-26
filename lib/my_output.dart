import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'slider_state.dart';

class MyDisplay extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer<SliderState>(
      builder: (context,  value, _) =>
          Text("Value = ${value.sliderValue.toStringAsFixed(2)}"),
    );
  }
}
