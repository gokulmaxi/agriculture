import 'package:flutter/material.dart';
import 'package:agriculture/components/header_view.dart';
import 'package:agriculture/components/home_service_view.dart';
import 'package:agriculture/components/temperature_view.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          margin: const EdgeInsets.symmetric(vertical: 15.0, horizontal: 25.0),
          child: Column(
            children: <Widget>[
              Expanded(
                flex: 2,
                child: Column(
                  children: <Widget>[
                    Expanded(
                      flex: 1,
                      child: HeaderView(),
                    ),
                    Expanded(
                      flex: 3,
                      child: HomeServiceView(),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
