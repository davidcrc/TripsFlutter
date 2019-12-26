import 'package:flutter/material.dart';

import 'home_trips.dart';
import 'search_trips.dart';
import 'profile_trips.dart';


class PlatziTrips extends StatefulWidget{


  @override
  State<StatefulWidget> createState() {
    //

    return _PlatziTrips();
    //throw UnimplementedError();
  }

}

class _PlatziTrips extends State<PlatziTrips>{

  int indexTap = 0;
  // Aqui indexamos a nuestras vistas
  final List<Widget> widgestChildren = [
    HomeTrips(), SearchTrips(), ProfileTrips()
  ];

  // Recibe el indel del navigationBar
  void onTapTapped(int index){
    setState(() {
      indexTap = index;
    });
  }

  @override
  Widget build(BuildContext context) {

    // El scaffold se lo trajo del main
    return Scaffold(
      // Aqui traemos lo que se va a mostrar en la interfaz
      body: widgestChildren[indexTap],

      bottomNavigationBar: Theme(
        data: Theme.of(context).copyWith(
          canvasColor: Colors.white,
          primaryColor: Colors.purple
        ),
        child: BottomNavigationBar(
            // Estas dos variables cambian el index y configuran la accion que realizara el buttonNavbar
            currentIndex: indexTap,
            onTap: onTapTapped,


            items: [
              BottomNavigationBarItem(
                  icon: Icon(Icons.home),
                  title: Text("Home"),

              ),

              BottomNavigationBarItem(
                icon: Icon(Icons.search),
                title: Text("Search"),

              ),

              BottomNavigationBarItem(
                icon: Icon(Icons.person),
                title: Text("Profile"),

              ),


            ]
        ),
      ),

    );

    //throw UnimplementedError();
  }

}