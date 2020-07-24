import 'package:flutter/material.dart';
import 'package:shatayu/widgets/mobile_top.dart';

import 'build_row.dart';

Widget PanchakarmaMobile({double width, double height}){
  return Material(
    color: Color.fromRGBO(187, 255, 168, 0.4),
    child: Column(
      children: [
        MobileTop(width: width, height: height, text: 'Panchakarma' ,Description: 'Panchakarma therapies at '
            'Shatayu Ayurveda Panchakarma Super Speciality Clinic'),
      Row(
        mainAxisSize: MainAxisSize.max,
      mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
          buildRow(true,Title: 'Vaman-Medicated Vomitting', text: 'An  excellent treatment for diseases of cold, cough, asthma, '
      'sinusitis, allergies, skin diseases, diabetes, blood pressure, migraine, psychosis etc.',
          width: width, height : height, color: Color(0xffffd5d1)),
            buildRow(true,Title: 'Virechan -Purgative therapy', text: 'Removal of increased bile(Pitta)  by excretion - '
                'useful on jaundice, acidity, dermatitis, liver diseases, urinary diseases, eye diseases.',
                width:  width, height: height, color: Color(0xf089CFF0))
  ],
  ),

      ],
    ),
  );
}