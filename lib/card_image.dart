import 'package:flutter/material.dart';


class CradImage extends StatelessWidget
{

  String pathImage = "asset/images/playa1.jpg";

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    //throw UnimplementedError();

    final card = Container(
      height: 350,
      width: 250,
      margin: EdgeInsets.only(
        top: 80.0,
        left: 20.0
      ),
      decoration: BoxDecoration(
        image: DecorationImage(
          fit: BoxFit.cover,
            image: AssetImage(pathImage)
        ),
        borderRadius: BorderRadius.all(Radius.circular(10.0)),
        shape: BoxShape.rectangle,

        // Tiene una sombra debajo
        boxShadow: <BoxShadow>[
          BoxShadow(
            color: Colors.black38,
            blurRadius: 15.0,
            offset: Offset(0.0 , 7.0)
          ),
        ]
      ),
    );

    return card;
  }


}