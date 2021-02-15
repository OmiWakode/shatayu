import 'package:flutter/material.dart';

import 'nav_bar.dart';

class TopDeco extends StatefulWidget {
  final double width;
  final double height;
  final String text;

  const TopDeco({required this.width, required this.height, required this.text});

  @override
  _TopDecoState createState() => _TopDecoState();
}

class _TopDecoState extends State<TopDeco> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Image(
          image: AssetImage('assets/pngfuel1.com.png'),
          width: widget.width,
          height: widget.height / 2.6,
          fit: BoxFit.fill,
        ),
        NavBar(
          width: widget.width,
          height: widget.height,
        ),
        Padding(
          padding: EdgeInsets.only(top: widget.height/10, left: widget.width/4),
          child: Image(
            image: AssetImage('assets/shatayu.png'),
            width: 100,
            height: 100,
          ),
        ),

        Center(
          child: Padding(
            padding: EdgeInsets.only(top: widget.height / 9),
            child: Text(
              'Shatayu Ayurved '
                  'Panchakarma'
              '\n'
              'Superspeciality Clinic',
              style: TextStyle(
                fontFamily: 'Oswald',
                fontWeight: FontWeight.w600,
                fontSize: 30,
                color: Color.fromRGBO(1, 60, 30, 1),
              ),
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.only(
              left: widget.width / 10, top: widget.height / 3.5),
          child: Text(
            widget.text,
            style: TextStyle(
              fontFamily: 'Oswald',
              fontWeight: FontWeight.w600,
              fontSize: 30,
              color: Color.fromRGBO(1, 60, 30, 1),
            ),
          ),
        ),
      ],
    );
  }
}
