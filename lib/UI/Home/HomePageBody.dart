import 'package:flutter/material.dart';
import 'package:Planets/UI/Home/PlanetRow.dart';

class HomePageBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new PlanetRow(planets[0]);
  }
}
