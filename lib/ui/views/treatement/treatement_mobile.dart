import 'package:flutter/material.dart';
import 'package:shatayu/widgets/mobile_top.dart';

import 'diseases.dart';

Widget TreatementMobile({width, height}){
  return
     Material(
        color: Color.fromRGBO(187, 255, 168, 0.5),
        child: Column(
          children: [
            MobileTop(text: 'Diseases', Description: 'The best treatment on all the following diseases '
                'by Ayurvedic medicine and Panchakarma therapy:',width: width, height: height),
            Diseases(mobile: true, height: height, width: width),
            Image(
              image: AssetImage('assets/pngfuel.com.bottom.png'),
              width: width,
              height: height / 4,
              fit: BoxFit.fill,
            ),

        ]));

}


