/*This file contains the home view of laptop, in landscape mode

 */


import 'package:flutter/material.dart';

class HomeViewLaptop extends StatefulWidget {
  @override
  _HomeViewLaptopState createState() => _HomeViewLaptopState();
}

class _HomeViewLaptopState extends State<HomeViewLaptop> {
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return ListView(
      children: [
        SafeArea(child: Column(
          children: [
              Material(


                child: Stack(
                  children: [
                    Image(image: AssetImage('assets/green_wave.jpg'),
                    fit: BoxFit.fill,
                      width: width,
                      height: height/3,),
                    Padding(
                      padding: const EdgeInsets.only(left: 25, top: 30),
                      child: Image(
                      image: AssetImage('assets/logo.png'),
                        height: 100,
                          width: 100,
                      ),
                    ),
                    Stack(

                      children: [
                    Padding(
                    padding: const EdgeInsets.only(top: 30,left: 130),
                    child: Text('Dr. Madhavi\'s',
                    style: TextStyle(
                    fontFamily: 'GreatVibes',
                    fontWeight: FontWeight.w800,
                    color: Colors.red,
                    fontSize: 30
                    ),),
                    ),
                        Padding(
                          padding: const EdgeInsets.only(left: 130,top: 45),
                          child: Text(
                            'Shatayu Ayurveda Panchakarma',
                            style: TextStyle(fontFamily: 'Oswald',
                            fontWeight: FontWeight.w600,
                            fontSize: 50,
                            color: Color.fromRGBO(1,60,30,1)),
                          ),
                        ),

                      ],
                    ),

                  ],
                ),
              )

          ],
        )),
      ],
    );
  }
}
