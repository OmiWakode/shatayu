import 'package:flutter/material.dart';

class MobileTop extends StatelessWidget {
  final String text;
  final double width;
  final double height;
  final String description;

  MobileTop({required this.text, required this.width, required this.height, required this.description});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Image(
          image: AssetImage('assets/pngfuel1.com.png'),
          width: width,
          height: height / 3.5,
          fit: BoxFit.fill,
        ),
        Padding(
          padding: EdgeInsets.only(left: width/10, top: height/7),
          child: Image.asset('assets/shatayu.png',
            width: 50,
          ),

        ),
        Padding(
          padding: EdgeInsets.only(
              left: width / 3, top: height / 7),
          child: Text(text,
            style: TextStyle(
              fontFamily: 'Oswald',
              fontWeight: FontWeight.w600,
              fontSize: 30,
              color: Color.fromRGBO(1, 60, 30, 1),
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.only(left: width / 10, top: height/4, right: width/20),
          child: Text(
            description,
            style: TextStyle(
                fontFamily: 'Baloo',
                fontSize: 16,
                fontWeight: FontWeight.w700,
                color: Color.fromRGBO(1, 60, 30, 1)),
            softWrap: true,
          ),
        ),
      ],
    );;
  }
}