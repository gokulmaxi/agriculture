import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/material.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:neuomorphic_container/neuomorphic_container.dart';

class Dashboard extends StatefulWidget {
  final int temperature;
  Dashboard({Key key, @required this.temperature}) : super(key: key);
  @override
  _DashboardState createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard>
    with SingleTickerProviderStateMixin {
  bool isLoading = false;

  final rf = FirebaseDatabase.instance.reference();

  @override
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: NeumorphicAppBar(
        title: Text(""),
        leading: InkWell(
          child: NeuomorphicContainer(
            shape: BoxShape.circle,
            child: Icon(Icons.arrow_back),
            color: Theme.of(context).primaryColor,
          ),
        ),
      ),
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          Container(
            width: 200,
            height: 200,
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text('Temperature'),
                  Text(
                    "hi",
                    style: TextStyle(fontSize: 50, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    '°C',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
          ),
          Container(
            width: 200,
            height: 200,
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text('Humidity'),
                  Text(
                    "hi",
                    style: TextStyle(fontSize: 50, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    '%',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
          ),
        ],
      )),
    );
  }
}
