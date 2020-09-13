import 'package:flutter/material.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';

import 'package:neuomorphic_container/neuomorphic_container.dart';

class Weather extends StatefulWidget {
  @override
  _WeatherState createState() => _WeatherState();
}

class _WeatherState extends State<Weather> {
  @override
  Widget build(BuildContext context) {
    return NeumorphicApp(
        home: Scaffold(
      appBar: NeumorphicAppBar(
        title: Text("Temperature & humidity"),
        leading: InkWell(
          onTap: () => {Navigator.pushNamed(context, '/back')},
          child: NeuomorphicContainer(
            shape: BoxShape.circle,
            child: Icon(Icons.arrow_back),
            color: Theme.of(context).primaryColor,
          ),
        ),
      ),
      body: Column(
        children: [
          Container(
            height: MediaQuery.of(context).size.height / 10,
            width: MediaQuery.of(context).size.width / 1.2,
            child: Column(
              children: [
                SizedBox(
                  height: 20,
                ),
                Row(
                  children: [
                    SizedBox(
                      width: 90,
                    ),
                    Text(
                      "sunny weather",
                      style: TextStyle(
                          color: Colors.grey[700],
                          fontSize: 20,
                          fontWeight: FontWeight.w600),
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Text(
                      "25 °C",
                      style: TextStyle(
                          color: Colors.blueAccent,
                          fontSize: 20,
                          fontWeight: FontWeight.w600),
                    ),
                  ],
                ),
              ],
            ),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(17.0)),
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
          ),
          Expanded(
              child: Padding(
            padding: EdgeInsets.all(20.0),
            child: ListView(
              children: [
                ListTile(
                  leading: Icon(Icons.grain),
                  title: Text("Moisture"),
                  trailing: Text(
                    "15%",
                    style: TextStyle(
                        color: Colors.blueAccent,
                        fontSize: 20,
                        fontWeight: FontWeight.w600),
                  ),
                )
              ],
            ),
          ))
        ],
      ),
    ));
  }
}
