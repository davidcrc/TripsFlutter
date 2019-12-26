import 'package:flutter/material.dart';

// BOTON CON ESTADO!!!!!!!!!!!

class FloatingActionButtonGreen extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    //

    return _FloatingActionButtongreen();
    //throw UnimplementedError();
  }


}


class _FloatingActionButtongreen extends State<FloatingActionButtonGreen>{

  bool isFavorite = false;

  void onPressedFav(){
    Scaffold.of(context).showSnackBar(
      SnackBar(
          content: Text("Agregaste a tus favoritos")
      ),
    );
  }

  void _onPressedFav(){

    // Setear la variable, cuando presiona el icono
    setState(() {
      isFavorite = !isFavorite;
    });

    // Setear el texto mostrado
    String _text = isFavorite ? "Agreado a tus favoritos" : "Eliminado de tus faviritos";

    Scaffold.of(context).showSnackBar(
      SnackBar(
          content: Text(_text)
      ),
    );
  }
  
  @override
  Widget build(BuildContext context) {
    //

    return FloatingActionButton(
      backgroundColor: Color(0xFF11DA53),
      // NOTE: para manejar el tamaño del boton
      mini: true,
      tooltip: "Fav",
      //onPressed: onPressedFav,
      onPressed: _onPressedFav,
      child: Icon(
        //Icons.favorite_border
        isFavorite ? Icons.favorite: Icons.favorite_border,
      ),
    );


    //throw UnimplementedError();
  }

}