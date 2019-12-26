import 'package:flutter/material.dart';
import 'card_image.dart';

class CardImageList extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    // TODO: implement build

    final list = Container(
      height: 350.0,
      child: ListView(
        padding: EdgeInsets.all(25.0),
        scrollDirection: Axis.horizontal,
        children: <Widget>[
          CardImage("assets/images/playa1.jpg"),
          CardImage("assets/images/playa2.jpg"),
          CardImage("assets/images/playa3.jpg"),
          CardImage("assets/images/playa4.jpg"),

        ],
      ),
    );

    return list;
    //throw UnimplementedError();
  }

}