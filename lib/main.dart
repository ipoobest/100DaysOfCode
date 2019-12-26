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
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      child: Scaffold(
        appBar: AppBar(
          title: Text('My Provider'),
        ),
        body: Center(
            child: Column(
          children: <Widget>[
            MyDisPlay(),
            MySlider(),
          ],
        )),
      ), providers: <SingleChildCloneableWidget>[
        ChangeNotifierProvider(create: (BuildContext context) => SliderState())
      ],
    );
  }
}
