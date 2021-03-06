import 'package:agriculture/pages/ph.dart';
import 'package:agriculture/pages/water.dart';
import 'package:agriculture/pages/weather.dart';
import 'package:agriculture/pages/web.dart';
import 'package:flutter/material.dart';
import 'package:agriculture/screens/home_screen.dart';
import 'package:agriculture/theme/style.dart';

import 'pages/temp&hum.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/',
      routes: {
        // When navigating to the "/" route, build the FirstScreen widget.
        '/temp': (context) => Dashboard(),
        '/back': (context) => HomeScreen(),
        '/0': (context) => WaveProgress(),
        '/1': (context) => PH(),
        '/2': (context) => Web(),
        '/5': (context) => Weather(),

        // When navigating to the "/second" route, build the SecondScreen widget.
      },
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: appTheme(),
      // home: TemperatureScreen(),
      home: HomeScreen(),
    );
  }
}
