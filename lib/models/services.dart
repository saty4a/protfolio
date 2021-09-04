import 'package:flutter/material.dart';

class Service {
  late final int id;
  late final String title, image;
  late final Color color;

  Service(
      {required this.id,
      required this.title,
      required this.color,
      required this.image});
}

//for demo list of service
List<Service> services = [
  Service(
    id: 1,
    title: "Graphic Design",
    color: Color(0xFFD9FFFC),
    image: "assets/images/graphic.png",
  ),
  Service(
    id: 2,
    title: "Web Design",
    color: Color(0xFFE4FFC7),
    image: "assets/images/desktop.png",
  ),
  Service(
    id: 3,
    title: "UI Design",
    color: Color(0xFFFFF3DD),
    image: "assets/images/ui.png",
  ),
  Service(
    id: 4,
    title: "Interaction Design",
    color: Color(0xFFFFE0E0),
    image: "assets/images/Intreaction_design.png",
  ),
];
