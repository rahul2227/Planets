import 'package:Planets/UI/Home/GradientAppBar.dart';
import 'package:flutter/material.dart';
import 'package:Planets/UI/Home/HomePageBody.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body: new Column(
        children: <Widget>[
          new GradientAppBar("Treva"),
          new HomePageBody(),
          new HomePageBody(),
          new HomePageBody(),
          new HomePageBody(),
        ],
      ),
    );
  }
}
