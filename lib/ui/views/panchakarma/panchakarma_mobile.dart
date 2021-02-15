import 'package:flutter/material.dart';
import 'build_tiles.dart';

import 'package:shatayu/widgets/mobile_top.dart';

class PanchakarmaMobile extends StatelessWidget {
  final double width;
  final double height;

  PanchakarmaMobile({required this.width, required this.height});

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Color.fromRGBO(187, 255, 168, 0.4),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          MobileTop(
              width: width,
              height: height,
              text: 'Panchakarma',
              description: 'Panchakarma therapies at '
                  'Shatayu Ayurveda Panchakarma Super Speciality Clinic'),
          BuildTiles(true, height: height, width: width),
          Padding(
            padding: EdgeInsets.only(left: width / 9, top: height / 20),
            child: Text(
              'Other Treaments',
              style: TextStyle(
                fontFamily: 'Oswald',
                fontWeight: FontWeight.w600,
                fontSize: 20,
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
                  '✣ JanuBasti, KatiBasti, GreevaBasti, '
                  '\n'
                  '✣ HridiyaBasti, UttarBasti, Aansbasti'
                  '\n'
                  '✣ Netra Tarpan',
              softWrap: true,
              style: TextStyle(fontFamily: 'Baloo', fontSize: 15),
            ),
          ),
          Image(
            image: AssetImage('assets/pngfuel.com.bottom.png'),
            width: width,
            height: height / 4,
            fit: BoxFit.fill,
          ),
        ],
      ),
    );
  }
}

