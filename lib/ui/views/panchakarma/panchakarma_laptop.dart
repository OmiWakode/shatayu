import 'package:flutter/material.dart';
import 'package:shatayu/widgets/top_bar.dart';
import 'package:shatayu/widgets/top_deco.dart';

import 'build_row.dart';

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
          Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              buildRow(false,Title: 'Vaman-Medicated Vomitting', text: 'An  excellent treatment for diseases of cold, cough, asthma, '
              'sinusitis, allergies, skin diseases, diabetes, blood pressure, migraine, psychosis etc.',
                  width: width, height : height, color: Color(0xffffd5d1)),
              buildRow(false,Title: 'Virechan -Purgative therapy', text: 'Removal of increased bile(Pitta)  by excretion - '
                  'useful on jaundice, acidity, dermatitis, liver diseases, urinary diseases, eye diseases.',
                 width:  width, height: height, color: Color(0xf089CFF0))
            ],
          ),
          SizedBox(
            height: height / 8,
          ),
          Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              buildRow(false,Title: 'Basti-(Medicated Enima)', text: 'The best medicine for all vata/gout diseasest.It\'s passing medicine through anal passage .Effective on - Joint pain, arthritis,'
                  ' sciatica, spinal disorders, slip disc, paralysis, osteoporosis, '
                  'menstrual problem, hormone imbalance, infertility, stomach. Diseases, Piles, Migraines and others.',
                  width: width, height: height, color: Color(0xfffde992)),
              buildRow(false,Title: 'Nasya-Nasal Drop Therapy', text:'Nasal medicine - Extremely effective on all Venereal(शिरोरोग) diseases, headache, sinusitis, hair problem, eye diseases, '
                  'sleep disorders, psychiatric diseases,thyroid and all disorders of nose, ear and spinal cord .',
                  width: width, height: height, color: Color(0xffe7accf))
            ],
          ),
          SizedBox(
            height: height / 8,
          ),
          Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              buildRow(false,Title:'RaktaMokshan- Blood Letting', text:'Removing impure blood from the body - '
                  'beneficial for all blood visceral( रक्त दृष्टिजन्य ) and biliary(पित्तज दोष) defects, as well as diseases of '
                  'psoriasis, eczema, varicose veins, pimples,'
                  ' headaches, allergies, jaundice, gout, inflammation, etc.',width: width, height: height,
                  color: Color(0xa0cf352e)),
              buildRow(false,Title:'Shirodhara',text: 'Gently pouring Medicated liquids,(oil, decotion(काढ़ा)) on the forehead. Most benefitial for mental stress,'
                  'anxiety, sleeplessness,hairloss, headaches,hormonal imbalances etc ',width: width,height: height,
                  color: Color.fromRGBO(244,164,96, 1))
            ],
          ),
          SizedBox(
            height: height / 8,
          ),
          Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              buildRow(false,
                 Title: 'Kareliya Massage', text: 'Authentic therapeutic massage with ayurvedic oils.', width:width, height:height,
                  color: Color(0xfff4C4B2)),
              buildRow(false,Title:'Medicated Steam Bath', text:'Full body therapy using medicated steam to generate sweating or perspiration, which helps to release '
                  'deep-seated toxins and relieves stress ',width: width, height:height,
                 color: Color(0xff50c878))
            ],
          ),
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
