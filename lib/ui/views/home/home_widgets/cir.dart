import 'package:flutter/material.dart';


List<Widget> buildCarasoulList(double rad){
   List<Widget> Bir = [
    CircleAvatar(
      radius: rad + 5,
      backgroundColor: Colors.black12,
      child: CircleAvatar(
        radius: rad,
        backgroundImage: AssetImage('assets/lol.jpeg'),
      ),
    ),
    CircleAvatar(
      radius: rad + 5,
      backgroundColor: Colors.black12,
      child: CircleAvatar(
        radius: rad,
        backgroundImage: AssetImage('assets/ayurved1.jpg'),
      ),
    ),
    CircleAvatar(
      radius: rad + 5,
      backgroundColor: Colors.black12,
      child: CircleAvatar(
        radius: rad,
        backgroundImage: AssetImage('assets/potli.jpg'),
      ),
    ),
    CircleAvatar(
      radius: rad + 5,
      backgroundColor: Colors.black12,
      child: CircleAvatar(
        radius: rad,
        backgroundImage: AssetImage('assets/shirodhara1.jpg'),
      ),
    ),
  ];
   return Bir;

}



