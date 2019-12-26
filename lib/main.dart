import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_basic/slider_state.dart';
import 'my_output.dart';
import 'my_slider.dart';

main() => runApp(App());

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Home(),
    );
  }
}

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  double sliderValue = 0.5;
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => SliderState(),
      child: Scaffold(
          appBar: AppBar(
            title: Text('provider'),
          ),
          body: Column(
            children: <Widget>[MyDisplay(), MySlider()],
          )), 
    );
  }
}
