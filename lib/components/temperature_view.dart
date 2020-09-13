import 'package:flutter/material.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';

import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:neuomorphic_container/neuomorphic_container.dart';

class TemeratureView extends StatelessWidget {
  final int temerature;

  const TemeratureView({Key key, @required this.temerature}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => {Navigator.pushNamed(context, '/temp')},
      child: Container(
          child: Column(children: <Widget>[
        Column(children: <Widget>[
          Container(
            height: MediaQuery.of(context).size.height / 6,
            width: MediaQuery.of(context).size.width / 1.3,
            child: Padding(
              padding:
                  const EdgeInsets.symmetric(vertical: 8.0, horizontal: 12.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Icon(
                        FontAwesomeIcons.temperatureHigh,
                        color: Colors.blueGrey,
                      ),
                    ],
                  ),
                  Text(this.temerature.toString() + "°C"),
                  Text(
                    "Temperature & humidity",
                    style: TextStyle(
                      fontSize: 16.0,
                      color: Colors.blueGrey,
                    ),
                  ),
                ],
              ),
            ),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(15.0),
                  bottomRight: Radius.circular(15.0)),
              color: Theme.of(context).primaryColor,
              boxShadow: [
                BoxShadow(
                  offset: Offset(3, 3),
                  color: Colors.black12,
                  blurRadius: 3,
                ),
                BoxShadow(
                  offset: Offset(-3, -3),
                  color: Colors.white,
                  blurRadius: 3,
                ),
              ],
            ),
          )
        ])
      ])),
    );
  }
}
