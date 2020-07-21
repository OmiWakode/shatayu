import 'package:flutter/material.dart';
import 'package:shatayu/widgets/top_bar.dart';
import 'package:shatayu/widgets/top_deco.dart';

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
            text: 'Panchakarma Treatement',
          ),
          Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              buildRow('Vaman-Medicated Vomitting', 'An  excellent treatment for diseases of cold, cough, asthma, '
              'sinusitis, allergies, skin diseases, diabetes, blood pressure, migraine, psychosis etc.',
                  width, height, Color(0xffffd5d1)),
              buildRow('Virechan -Purgative therapy', 'Removal of increased bile(Pitta)  by excretion - '
                  'useful on jaundice, acidity, dermatitis, liver diseases, urinary diseases, eye diseases.',
                  width, height, Color(0xf089CFF0))
            ],
          ),
          SizedBox(
            height: height / 8,
          ),
          Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              buildRow('Basti-(Medicated Enima)', 'The best medicine for all vata/gout diseasest.It\'s passing medicine through anal passage .Effective on - Joint pain, arthritis,'
                  ' sciatica, spinal disorders, slip disc, paralysis, osteoporosis, '
                  'menstrual problem, hormone imbalance, infertility, stomach. Diseases, Piles, Migraines and others.',
                  width, height, Color(0xfffde992)),
              buildRow('Nasya-Nasal Drop Therapy', 'Nasal medicine - Extremely effective on all Venereal(शिरोरोग) diseases, headache, sinusitis, hair problem, eye diseases, '
                  'sleep disorders, psychiatric diseases,thyroid and all disorders of nose, ear and spinal cord .', width, height, Color(0xffe7accf))
            ],
          ),
          SizedBox(
            height: height / 8,
          ),
          Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              buildRow('RaktaMokshan- Blood Letting', 'Removing impure blood from the body - '
                  'beneficial for all blood visceral( रक्त दृष्टिजन्य ) and biliary(पित्तज दोष) defects, as well as diseases of '
                  'psoriasis, eczema, varicose veins, pimples,'
                  ' headaches, allergies, jaundice, gout, inflammation, etc.', width, height, Color(0xa0cf352e)),
              buildRow('Shirodhara', 'Gently pouring Medicated liquids,(oil, decotion(काढ़ा)) on the forehead. Most benefitial for mental stress,'
                  'anxiety, sleeplessness,hairloss, headaches,hormonal imbalances etc ', width, height, Color.fromRGBO(244,164,96, 1))
            ],
          ),
          SizedBox(
            height: height / 8,
          ),
          Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              buildRow(
                  'Kareliya Massage', 'Authentic therapeutic massage with ayurvedic oils.', width, height, Color(0xfff4C4B2)),
              buildRow('Medicated Steam Bath', 'Full body therapy using medicated steam to generate sweating or perspiration, which helps to release '
                  'deep-seated toxins and relieves stress ', width, height,
                  Color(0xff50c878))
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

  Widget buildRow(String Title, String text, width, height, Color color) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: color,
      ),
      width: width / 3,
      //height: height/2,

      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Stack(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.only(
                    topRight: Radius.circular(10),
                    topLeft: Radius.circular(10)),
                child: Image(
                  image: AssetImage('assets/ayurved1.jpg'),
                  //width: width / 3,
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 130),
                child: Container(
                  width: width / 3,
                  color: Colors.white30,
                  child: Center(
                    child: Text(
                      Title,
                      style: TextStyle(
                        fontFamily: 'OpenSans',
                        fontSize: 30,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
          Center(
            child: Padding(
              padding: EdgeInsets.all(8),
              child: Text(
                text,
                style: TextStyle(fontFamily: 'Baloo', fontSize: 17),
                softWrap: true,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
