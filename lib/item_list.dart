import 'package:flutter/material.dart';
import 'item_designer.dart';

class ItemDesignerList extends StatelessWidget{


  @override
  Widget build(BuildContext context) {
    //
    return Container(
      margin: EdgeInsets.only(
        top: 80.0
      ),

      child: ListView(
        children: <Widget>[
          ItemDesigner('Nombre 1', '1 year', 'assets/images/perfil1.jpg', true),

          ItemDesigner('Nombre 3', '3 year', 'assets/images/perfil3.jpg', false),
          ItemDesigner('Nombre 2', '2 year', 'assets/images/perfil2.jpg', true),
          ItemDesigner('Nombre 4', '1 year', 'assets/images/perfil4.jpg', false),
          ItemDesigner('Nombre 5', '2 year', 'assets/images/perfil5.jpg', true),
          ItemDesigner('Nombre 6', '4 year', 'assets/images/perfil6.jpg', false),
          ItemDesigner('Nombre 7', '2 year', 'assets/images/perfil1.jpg', true),
          ItemDesigner('Nombre 8', '1 year', 'assets/images/perfil3.jpg', true),
          ItemDesigner('Nombre 9', '2 year', 'assets/images/perfil6.jpg', false),
          ItemDesigner('Nombre 10', '2 year', 'assets/images/perfil5.jpg', true),

        ],
      ),
    );
    //throw UnimplementedError();
  }

}