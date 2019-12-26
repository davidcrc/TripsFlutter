import 'package:flutter/material.dart';
import 'button_purple.dart';

// Al crear la clase debe ser capital

class DescriptionPlace extends StatelessWidget{

  // Estas son las varibales que se pueden modificar
  String namePlace ;
  int stars;
  String descriptionPlace ;
  //String desciptionDummy = "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.";

  // Aqui creamoss un "constructor"
  DescriptionPlace(this.namePlace, this.stars, this.descriptionPlace);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build

    final star_half = Container(
      margin: EdgeInsets.only(
        top: 323.0,
        right: 3.0,
      ),

      child: Icon(
        Icons.star_half,
        color: Color(0xFFf2C611),
      ),
    );

    final star_border = Container(
      margin: EdgeInsets.only(
        top: 323.0,
        right: 3.0,
      ),

      child: Icon(
        Icons.star_border,
        color: Color(0xFFf2C611),
      ),
    );

    final star = Container(
      margin: EdgeInsets.only(
        top: 323.0,
        right: 3.0,
      ),

      child: Icon(
        Icons.star,
        color: Color(0xFFf2C611),
      ),
    );

    // NOTE: Primero trabajamos los textos del titulo de los contenidos
    final title_stars = Row (
      children: <Widget>[
        Container(
          margin: EdgeInsets.only(
            top: 320.0,
            left: 20.0,
            right: 20.0,
          ),

          child: Text(
            namePlace,
            style: TextStyle(
              fontFamily: "Lato",
              fontSize: 30.0,
              fontWeight: FontWeight.w900,

            ),
            textAlign: TextAlign.left,
          ),

        ),

        // Aqui las estrellas, ( otro hijo en los childen)
        Row(
          children: <Widget>[
            star,
            star,
            star,
            star,
            star_half,

          ],
        )
      ],
    );


    final description = Container(
      margin: new EdgeInsets.only(
        top: 20.0,
        left: 20.0,
        right: 20.0

      ),

      child: new Text(
        descriptionPlace,
        style: const TextStyle(
          fontFamily: "Lato",
          fontSize: 16.0,
          fontWeight: FontWeight.bold,
          color: Color(0xFF56575a)
        ),
      ),
    );


    //throw UnimplementedError();
    //return title_stars;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        title_stars,
        description,
        ButtonPurple("Navigatee"),
      ],
    );
  }

}