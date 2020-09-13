import 'package:agriculture/components/temperature_view.dart';
import 'package:flutter/material.dart';
import 'package:agriculture/components/header_view.dart';
import 'package:agriculture/components/home_service_view.dart';

import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            margin:
                const EdgeInsets.symmetric(vertical: 15.0, horizontal: 25.0),
            child: Column(
              children: <Widget>[
                Column(
                  children: <Widget>[
                    SizedBox(
                      height: 30,
                    ),
                    HeaderView(),
                    SizedBox(
                      height: 30,
                    ),
                    HomeServiceView(),
                    TemeratureView()
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
