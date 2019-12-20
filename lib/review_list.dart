import 'package:flutter/material.dart';
import "review.dart";

class ReviewList extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    //throw UnimplementedError();

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Review("assets/images/flutter.jpg", "Varuna", "Detalle 1", "Comentario 1"),
        Review("assets/images/flutter.jpg", "Anahi", "Detalle 2", "Comentario 2"),
        Review("assets/images/flutter.jpg", "girl", "Detalle 3", "Comentario 3"),

      ],
    );
    //return null;
  }

}