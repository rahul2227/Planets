import 'package:Planets/model/planets.dart';
import 'package:flutter/material.dart';
import 'package:Planets/UI/Home/PlanetRow.dart';

class HomePageBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Expanded(
      child: new ListView.builder(
        itemBuilder: (context, index) => new PlanetRow(planets[index]),
        itemCount: planets.length,
        padding: new EdgeInsets.symmetric(
            vertical:
                16.0), //We decided to set a margin of 16dp as top and bottom for each row. That makes 32 dp separation between rows, but the first item top margin and the last item bottom margin are only 16dp.
        // itemExtent: 152.0, we dont need to use this parameter as Expanded will automatically adjust values for each screen.
      ),
    );
  }
}
