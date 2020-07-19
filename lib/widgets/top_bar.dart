import 'package:flutter/material.dart';

class TopBar extends StatelessWidget {
  final double width;
  final double height;

  const TopBar({Key key,@ required this.width, this.height}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Container(
      color: Color.fromRGBO(46,139,87,1),
      height: height/17,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(width: width/20),
          Icon(Icons.home,color: Colors.white,),
          SizedBox(width: 10,),
          Text('E-7/LIG 376,Arera Colony, Bhopal',
            style: TextStyle(
                fontFamily: 'Baloo',
                color: Colors.white,
              fontSize: 18
            ),),
          SizedBox(width: width/40),
          Container(width: 0.2,color: Colors.white,height: 20,),
          SizedBox(width: width/40),
          Icon(Icons.call, color: Colors.white),
          SizedBox(width: 10),
          Text('+91-9826092380',style: TextStyle(
              fontFamily: 'Baloo',
              color: Colors.white,
            fontSize: 18
          ),)
        ],
      ),
    );
  }
}
