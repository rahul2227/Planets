import 'package:Planets/model/planets.dart';
import 'package:flutter/material.dart';

class PlanetRow extends StatelessWidget {
  final Planet planet;

  PlanetRow(this.planet);

  @override
  Widget build(BuildContext context) {
    final planetThumbnail = new Container(
      margin: new EdgeInsets.symmetric(
        vertical: 16.0,
      ),
      alignment: FractionalOffset.centerLeft,
      child: new Image(
        image: new AssetImage(planet.image),
        height: 92.0,
        width: 92.0,
      ),
    );

    final baseTextStyle = const TextStyle(
      fontFamily: 'Poppins',
    );

    final regularTextStyle = baseTextStyle.copyWith(
      color: const Color(0xffb6b2df),
      fontSize: 9.0,
      fontWeight: FontWeight.w400,
    );

    final subHeaderTextStyle = regularTextStyle.copyWith(
      fontSize: 12.0,
    );

    final headerTextStyle = baseTextStyle.copyWith(
      // copy with allows us generate a new TextStyle object from another one modifying some of the attributes.
      color: Colors.white,
      fontSize: 18.0,
      fontWeight: FontWeight.w600,
    );

    Widget _planetValue({String value, String image}) {
      return new Row(
        children: <Widget>[
          new Image.asset(image, height: 12.0),
          new Container(
            width: 8.0,
          ),
          new Text(
            planet.gravity,
            style: regularTextStyle,
          ),
        ],
      );
    }

    final planetCard = new Container(
      margin: new EdgeInsets.fromLTRB(76.0, 16.0, 16.0, 16.0),
      constraints: new BoxConstraints
          .expand(), // We have to define a constraint (BoxConstraints.expand()), otherwise, the container will adjust to the minimum size required by its children, and we want it to get the whole row.
      child: new Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          new Container(height: 4.0),
          new Text(
            planet.name,
            style: headerTextStyle,
          ),
          new Container(height: 10.0),
          new Text(
            planet.location,
            style: subHeaderTextStyle,
          ),
          new Container(
            margin: new EdgeInsets.symmetric(vertical: 8.0),
            height: 2.0,
            width: 18.0,
            color: new Color(0xff00c6ff),
          ),
          // new Row(
          //   children: <Widget>[
          //     new Expanded(
          //       child: new Row(
          //         children: <Widget>[
          //           new Image.asset(
          //             "assets/img/ic_distance.png",
          //             height: 12.0,
          //           ),
          //           new Container(
          //             width: 8.0,
          //           ),
          //           new Text(
          //             planet.gravity,
          //             style: regularTextStyle,
          //           ),
          //         ],
          //       ),
          //     ),
          //     new Expanded(
          //       child: new Row(
          //         children: <Widget>[
          //           new Image.asset(
          //             "assets/img/ic_gravity.png",
          //             height: 12.0,
          //           ),
          //           new Container(
          //             width: 8.0,
          //           ),
          //           new Text(
          //             planet.gravity,
          //             style: regularTextStyle,
          //           ),
          //         ],
          //       ),
          //     ),
          //   ],
          // ),
          new Row(
            children: <Widget>[
              new Expanded(
                  child: _planetValue(
                      value: planet.distance,
                      image: 'assets/img/ic_distance.png')),
              new Expanded(
                  child: _planetValue(
                      value: planet.gravity,
                      image: 'assets/img/ic_gravity.png'))
            ],
          )
        ],
      ),
    );

    return new Container(
      height: 120.0,
      margin: EdgeInsets.symmetric(
        vertical: 16.0,
        horizontal: 24.0,
      ),
      child: new Stack(
        children: <Widget>[
          planetCard,
          planetThumbnail,
        ],
      ),
    );
  }
}
