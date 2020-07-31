import 'package:flutter/material.dart';
import 'package:shatayu/widgets/top_bar.dart';
import 'package:shatayu/widgets/top_deco.dart';

import 'build_row.dart';
import 'build_tiles.dart';
import 'matter.dart';

class PanchakarmaLaptop extends StatefulWidget {
  @override
  _PanchakarmaLaptopState createState() => _PanchakarmaLaptopState();
}

class _PanchakarmaLaptopState extends State<PanchakarmaLaptop> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Color.fromRGBO(187,255,168,0.8),
        appBar: PreferredSize(
            preferredSize: Size.fromHeight(height / 17),
            child: TopBar(height: height, width: width)),
        body: ListView(children: [
          TopDeco(
            height: height,
            width: width,
            text: 'Panchakarma',
          ),
          Padding(
            padding: EdgeInsets.only(left: width / 10,bottom: 10),
            child: Text(
              'Panchakarma therapies at '
                  'Shatayu Ayurveda Panchakarma Super Speciality Clinic'
              ,
              style: TextStyle(
                  fontFamily: 'Baloo',
                  fontSize: 20,
                  fontWeight: FontWeight.w700,
                  color: Color.fromRGBO(1, 60, 30, 1)),
              softWrap: true,
            ),
          ),
          BuildTiles(false, height: height, width: width),

          SizedBox(
            height: height / 8,
          ),

          Padding(
            padding: EdgeInsets.only(left: width / 10),
            child: Text(
              'Other Treaments',
              style: TextStyle(
                fontFamily: 'Oswald',
                fontWeight: FontWeight.w600,
                fontSize: 30,
                color: Color.fromRGBO(1, 60, 30, 1),
              ),
            ),
          ),

          Padding(
            padding: EdgeInsets.only(
              left: width / 10,
            ),
            child: Text(
              '✣ Potli Massage'
              '\n'
              '✣ Agnikarma'
              '\n'
              '✣ Viddhha Chikitsa'
              '\n'
              '✣ JanuBasti,KatiBasti,GreevaBasti,HridiyaBasti,UttarBasti, Aansbasti'
              '\n'
              '✣ Netra Tarpan',
              style: TextStyle(fontFamily: 'OpenSans', fontSize: 20),
            ),
          ),

              Image(
            image: AssetImage('assets/pngfuel.com.bottom.png'),
            width: width,
            height: height / 2.6,
            fit: BoxFit.fill,
          ),
        ]));
  }


}
