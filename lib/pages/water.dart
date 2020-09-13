import 'package:flutter/material.dart';
import 'package:waveprogressbar_flutter/waveprogressbar_flutter.dart';

class WaveProgress extends StatefulWidget {
  final int soilMoisture;

  const WaveProgress({Key key, @required this.soilMoisture}) : super(key: key);
  @override
  WaveProgressState createState() =>
      new WaveProgressState(soilMoisture: this.soilMoisture);
}

class WaveProgressState extends State<WaveProgress> {
  WaveProgressState({@required this.soilMoisture});
  final int soilMoisture;

  double waterHeight = 0.0;
  WaterController waterController = WaterController();

  @override
  void initState() {
    super.initState();
    WidgetsBinding widgetsBinding = WidgetsBinding.instance;
    widgetsBinding.addPostFrameCallback((callback) {
      waterController.changeWaterHeight(this.soilMoisture / 100);
    });
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      resizeToAvoidBottomPadding: false,
      appBar: new AppBar(
        title: new Text("Water monitoring"),
      ),
      body: new Column(
        children: <Widget>[
          new Row(
            children: <Widget>[],
          ),
          new Container(
            margin: EdgeInsets.only(top: 80.0),
            child: new Center(
              child: new WaveProgressBar(
                flowSpeed: 2.0,
                waveDistance: 45.0,
                waterColor: Color(0xFF68BEFC),
                heightController: waterController,
                percentage: waterHeight,
                size: new Size(300, 300),
                textStyle: new TextStyle(
                    color: Colors.black,
                    fontSize: 60.0,
                    fontWeight: FontWeight.bold),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
