import 'package:flutter/material.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:neuomorphic_container/neuomorphic_container.dart';

class PH extends StatelessWidget {
  bool automaticallyImplyLeading;

  @override
  Widget build(BuildContext context) {
    return NeumorphicApp(
      home: Scaffold(
        appBar: NeumorphicAppBar(
          title: Text("Nutrient Supply"),
          leading: InkWell(
            child: NeuomorphicContainer(
              shape: BoxShape.circle,
              child: Icon(Icons.arrow_back),
              color: Theme.of(context).primaryColor,
            ),
          ),
        ),
        body: Center(
          child: NeuomorphicContainer(
              shape: BoxShape.circle,
              height: MediaQuery.of(context).size.height / 4,
              width: MediaQuery.of(context).size.width / 0.50,
              color: Theme.of(context).primaryColor,
              child: Padding(
                  padding: const EdgeInsets.symmetric(
                      vertical: 8.0, horizontal: 12.0),
                  child: Column(
                    children: [
                      SizedBox(
                        height: 50,
                      ),
                      Text(
                        "7",
                        style: TextStyle(
                          fontSize: 37.0,
                          fontWeight: FontWeight.w800,
                          color: Colors.blueAccent,
                          decorationThickness: 200,
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        "PH",
                        style: TextStyle(
                          fontSize: 35.0,
                          fontWeight: FontWeight.bold,
                          color: Colors.grey[800],
                          decorationThickness: 200,
                        ),
                      )
                    ],
                  ))),
        ),
      ),
    );
  }
}
