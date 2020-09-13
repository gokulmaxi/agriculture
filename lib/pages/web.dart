import 'package:flutter/material.dart';
import 'package:neuomorphic_container/neuomorphic_container.dart';

class Web extends StatelessWidget {
  final List<String> _alphabets = [
    "assets/photo1.jpeg",
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: ListView(
          padding: EdgeInsets.all(10.0),
          scrollDirection: Axis.horizontal,
          children: _alphabets
              .map(
                (data) => new NeuomorphicContainer(
                  height: MediaQuery.of(context).size.height * 5,
                  width: MediaQuery.of(context).size.width * 4,
                  color: Theme.of(context).primaryColor,
                  child: new Image.asset(data),
                ),
              )
              .toList(),
        ),
      ),
    );
  }
}
