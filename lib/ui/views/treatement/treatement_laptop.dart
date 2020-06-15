import 'package:flutter/material.dart';

class TreatementLaptop extends StatefulWidget {
  @override
  _TreatementLaptopState createState() => _TreatementLaptopState();
}

class _TreatementLaptopState extends State<TreatementLaptop> {
  @override
  Widget build(BuildContext context) {

    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      body: ListView(
        children: [
          Container(
            color: Color.fromRGBO(46,139,87,1),
            height: height/17,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(width: width/20),
                Icon(Icons.home,color: Colors.white,),
                SizedBox(width: 10,),
                Text('E-7/LIG 376,Arera Colony,Bhopal',
                style: TextStyle(
                  fontFamily: 'Baloo',
                  color: Colors.white
                ),),
                SizedBox(width: width/40),
              Container(width: 0.2,color: Colors.white,height: 20,),
            SizedBox(width: width/40),
                Icon(Icons.call, color: Colors.white),
                SizedBox(width: 10),
                Text('+91-9826092380',style: TextStyle(
                  fontFamily: 'Baloo',
                  color: Colors.white
                ),)
              ],
            ),
          )
        ],
      ),
    );
  }
}
