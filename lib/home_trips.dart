import 'package:flutter/material.dart';


import 'package:platzi_flutter_app/review_list.dart';import 'description_place.dart';
import 'header_appbar.dart';class HomeTrips extends StatelessWidget
{

  @override
  Widget build(BuildContext context) {
    //
    String desciptionDummy = "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.\n\n It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.";

    return Stack(
      children: <Widget>[
        // NOTE: Exactamente como lo muestra ListView?: en columna siempre?
        ListView(
          children: <Widget>[
            DescriptionPlace("Bahamas", 4, desciptionDummy),
            ReviewList(),
          ],
        ),
        //
        //GradientBack("Popular"),
        HeaderAppBar(),     // NOTE: Por que pone  aqui el appbar??
      ],
    );

    //throw UnimplementedError();
  }

}