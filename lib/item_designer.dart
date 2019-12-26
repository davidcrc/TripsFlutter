import 'package:flutter/material.dart';

class ItemDesigner extends StatelessWidget{

  String nombre = 'Nombre';
  String experiencia = 'x mese(s)';
  String path = 'assets/images/avatar.jpg';
  bool mensaje = false;
  int genero = 0;

  ItemDesigner(this.nombre, this.experiencia, this.path, this.mensaje);

  @override
  Widget build(BuildContext context) {
    //
    final photo = Container(
      margin: EdgeInsets.only(
        top: 5.0,
        left: 20.0,
        bottom: 5.0,
      ),

      height: 80.0,
      width: 80.0,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(50),
        image: DecorationImage(
            fit: BoxFit.cover,
            image: AssetImage(path),
        )
      ),
    );


    // NOTE: Cual es la diferencia entre EdgeInsets.all y only???
    final username = Container(
      margin: EdgeInsets.all(3),
      child: Text(nombre,
        style: TextStyle(
          color: Colors.black,
          fontWeight: FontWeight.w600,
          fontFamily: "Lato",
          fontSize: 18.0,
        ),
      ),
    );

    final experience = Container(
      margin: EdgeInsets.all( 3 ),
      child: Text('Experiencia: $experiencia',
        style: TextStyle(
          color: Colors.black54,
          fontSize: 16.0,
          fontFamily: "Lato",
        ),
      )
    );


    final descriptionUser = Container(
      margin: EdgeInsets.only(
        left: 20.0,
      ),
      width: 210.0,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            username,
            experience
          ],
        ),
    );

    final buttonSatateMessage = Container(
      height: 50,
      width: 50,
      decoration: BoxDecoration(
        color: (mensaje) ? Colors.red: Colors.black12,
        borderRadius: BorderRadius.circular(40),
      ),
      child: Icon(Icons.email, color: (mensaje)?Colors.white: Colors.black38),
    );


    return Container(
      child: Row(
        children: <Widget>[
          photo,
          descriptionUser,
          buttonSatateMessage,
        ],
      ),

      decoration: BoxDecoration(
        border: Border(
          bottom: BorderSide(
            color: Colors.black12,
            width: 1.0,
          )
        )
      ),
    );

    //throw UnimplementedError();
  }

}