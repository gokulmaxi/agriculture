import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Service {
  Service({
    @required this.name,
    @required this.icon,
    this.status = false,
  });
  String name;
  IconData icon;
  bool status;
  static List<Service> getHomeService() {
    List<Service> services = [
      Service(name: 'water monitoring', icon: FontAwesomeIcons.water),
      Service(name: 'Nutrient Supply', icon: FontAwesomeIcons.seedling),
      Service(name: 'web camera', icon: Icons.camera),
      Service(name: 'Animal intrusion', icon: Icons.notifications_active),
      Service(name: 'Motor', icon: Icons.developer_board, status: true),
      Service(name: 'weather condition', icon: FontAwesomeIcons.cloudRain),
    ];
    return services;
  }
}
