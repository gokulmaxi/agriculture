import 'package:agriculture/components/temperature_view.dart';
import 'package:flutter/material.dart';
import 'package:agriculture/components/header_view.dart';
import 'package:agriculture/components/home_service_view.dart';
import 'package:agriculture/api/firebaseapi.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  Future<AgriInfo> futureAlbum;

  @override
  void initState() {
    super.initState();
    futureAlbum = fetchAgri();
  }

  Widget build(BuildContext context) {
    return Scaffold(
      body: FutureBuilder(
          future: futureAlbum,
          builder: (context, snapshot) {
            if (snapshot.hasData) {
              return SafeArea(
                child: SingleChildScrollView(
                  child: Container(
                    margin: const EdgeInsets.symmetric(
                        vertical: 15.0, horizontal: 25.0),
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
                            TemeratureView(
                                temerature: snapshot.data.temperature)
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              );
            } else if (snapshot.hasError) {
              return Text("${snapshot.error}");
            }
            return Center(child: CircularProgressIndicator());
          }),
    );
  }
}
