import 'dart:async';
import 'dart:convert';
import 'package:http/http.dart' as http;

Future<AgriInfo> fetchAgri() async {
  final response =
      await http.get('https://farming-26d3b.firebaseio.com/.json?print=pretty');

  if (response.statusCode == 200) {
    // If the server did return a 200 OK response,
    // then parse the JSON.
    final jsonresponse = json.decode(response.body);
    print(jsonresponse);
    return AgriInfo.fromJson(jsonresponse);
  } else {
    // If the server did not return a 200 OK response,
    // then throw an exception.
    throw Exception('Failed to load album');
  }
}

class AgriInfo {
  int humidity;
  int temperature;
  int motor;
  double phValue;
  int rain;
  int soilMoisture;
  AgriInfo(
      {this.humidity,
      this.temperature,
      this.motor,
      this.phValue,
      this.rain,
      this.soilMoisture});
  factory AgriInfo.fromJson(Map<String, dynamic> parsedJson) {
    return AgriInfo(
        humidity: parsedJson['humdity'],
        temperature: parsedJson['temperature'],
        motor: parsedJson['Motor'],
        soilMoisture: parsedJson['soilMoisture'],
        phValue: parsedJson['phValue']);
  }
}
