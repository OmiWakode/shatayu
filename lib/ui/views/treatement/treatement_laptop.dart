import 'package:flutter/material.dart';
import 'package:shatayu/widgets/top_bar.dart';
import 'package:shatayu/widgets/top_deco.dart';

class TreatementLaptop extends StatefulWidget {
  @override
  _TreatementLaptopState createState() => _TreatementLaptopState();
}

class _TreatementLaptopState extends State<TreatementLaptop> {
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: Color.fromRGBO(187,255,168,0.8),
      appBar: PreferredSize(
          preferredSize: Size.fromHeight(height / 17),
          child: TopBar(height: height, width: width)),
      body: ListView(
        children: [
          TopDeco(
            height: height,
            width: width,
            text: 'Treatement Diseases',
          ),
          Padding(
            padding: EdgeInsets.only(left: width / 10),
            child: Text(
              'The best treatment on all the following diseases by valuable Ayurvedic medicine and Panchakarma therapy'
              '\n'
                  ' as described in the Ayurveda Shastra:'
                  '\n',
              style: TextStyle(fontFamily: 'Baloo', fontSize: 20, fontWeight: FontWeight.w700,
              color: Color.fromRGBO(1, 60, 30, 1)),
              softWrap: true,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: width / 10, top: 10),
            child: Text(
              ' Vata Roga - Rheumatic diseases: relieve pain without operation',
              style: TextStyle(
                  fontFamily: 'Baloo',
                  fontSize: 18,
                  color: Colors.red,//Color.fromRGBO(46, 139, 87, 1),
                  fontWeight: FontWeight.w700),
            ),
          ),
          Row(children: [
            Padding(
              padding: EdgeInsets.only(left: width / 9, top: 8),
              child: Text(
                '✣ Arthritis'
                '\n'
                '✣ Migraine'
                '\n'
                '✣ Slip Disk'
                '\n'
                '✣ Back ache'
                '\n'
                '✣ Rheumatoid Arthritis (गठिया)',
                style: TextStyle(fontFamily: 'Baloo', fontSize: 17,
                    fontWeight: FontWeight.w500),
              ),
            ),
            Padding(
                padding: EdgeInsets.only(left: width / 7, top: 8),
                child: Text(
                    '✣ Neck pain '
                    '\n'
                    '✣ Cytica '
                    '\n'
                    '✣ Frozen Shoulder'
                    '\n'
                    '✣ Intravenous stretch / pressure (नसों में खिंचाव/दबाव)',
                    style: TextStyle(
                        fontFamily: 'Baloo',
                        fontSize: 17,
                        fontWeight: FontWeight.w500
                        ))),
          ]),
          Padding(
            padding: EdgeInsets.only(left: width / 10, top: 12),
            child: Text(
              ' Skin Diseases: Effective and permanent treatment',
              style: TextStyle(
                  fontFamily: 'Baloo',
                  fontSize: 18,
                  color: Colors.red,//Color.fromRGBO(46, 139, 87, 1),
                  fontWeight: FontWeight.w700),
            ),
          ),
          Row(
            children: [
              Padding(
                padding: EdgeInsets.only(left: width / 9, top: 8),
                child: Text(
                  '✣ Psoriasis'
                  '\n'
                  '✣ Allergy'
                  '\n'
                  '✣ Acne, Pimples, Boils',
                  style: TextStyle(fontFamily: 'Baloo', fontSize: 17,
                  fontWeight: FontWeight.w500),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: width/ 7, top: 8),
                child: Text(
                  '✣ Eczema'
                  '\n'
                  '✣ Herpes'
                  '\n'
                  '✣ Wrinkles, Dark Spots',
                  style: TextStyle(fontFamily: 'Baloo', fontSize: 17,
                      fontWeight: FontWeight.w500),
                ),
              ),
            ],
          ),
          Padding(
            padding: EdgeInsets.only(left: width / 10, top: 12),
            child: Text(
              'Stomach diseases - Digest your worries',
              style: TextStyle(
                  fontFamily: 'Baloo',
                  fontSize: 18,
                  color: Colors.red,//Color.fromRGBO(46, 139, 87, 1),
                  fontWeight: FontWeight.w700),
            ),
          ),
          Row(
            children: [
              Padding(
                padding: EdgeInsets.only(left: width / 9, top: 8),
                child: Text(
                  '✣ Jaundice (पीलिया)'
                  '\n'
                  '✣ Constipation (कब्ज)'
                  '\n'
                  '✣ Amoebiasis'
                  '\n'
                  '✣  IBS (Irritable Bowel Syndrome)',
                  style: TextStyle(fontFamily: 'Baloo', fontSize: 17,
                      fontWeight: FontWeight.w500),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: width / 9, top: 8),
                child: Text(
                  '✣ Diarrhoea (अतिसार) '
                  '\n'
                  '✣ Ulcera (पेट के व्रण)'
                  '\n'
                  '✣ Acidity (अम्लपित्त​)',
                  style: TextStyle(fontFamily: 'Baloo', fontSize: 17,
                      fontWeight: FontWeight.w500),
                ),
              ),
            ],
          ),
          Padding(
            padding: EdgeInsets.only(left: width / 10, top: 12),
            child: Text(
              ' Women\'s Disease (नारी की निरोगता)',
              style: TextStyle(
                  fontFamily: 'Baloo',
                  fontSize: 18,
                  color: Colors.red,//Color.fromRGBO(46, 139, 87, 1),
                  fontWeight: FontWeight.w700),
            ),
          ),
          Row(
            children: [
              Padding(
                padding: EdgeInsets.only(left: width / 9, top: 8),
                child: Text(
                  '✣ Menstrual problems'
                  '\n'
                  '✣ Infertility (बांझपन)'
                  '\n'
                  '✣ White Discharge',
                  style: TextStyle(fontFamily: 'Baloo', fontSize: 17,
                      fontWeight: FontWeight.w500),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: width / 7, top: 8),
                child: Text(
                  '✣ PCOD (हार्मोन्स संबंधी समस्या)'
                  '\n'
                  '✣ Ovarian Cyst'
                  '\n'
                  '✣ Uterine inflammation and lumps',
                  style: TextStyle(fontFamily: 'Baloo', fontSize: 17,
                      fontWeight: FontWeight.w500),
                ),
              ),
            ],
          ),
          Padding(
            padding: EdgeInsets.only(left: width / 10, top: 12),
            child: Text(
              ' Other Diseases - Effective Treatement',
              style: TextStyle(
                  fontFamily: 'Baloo',
                  fontSize: 18,
                  color: Colors.red,//Color.fromRGBO(46, 139, 87, 1),
                  fontWeight: FontWeight.w700),
            ),
          ),
          Row(children: [
            Padding(
              padding: EdgeInsets.only(left: width / 9, top: 8),
              child: Text(
                '✣ Asthama'
                    '\n'
                    '✣ Diabetes (मधुमेह)'
                    '\n'
                    '✣ Obesity (मोटापा)'
                    '\n'
                    '✣ Blood pressure'
                    '\n'
                    '✣ Appendicitis, stones (pathri rog)',
                style: TextStyle(fontFamily: 'Baloo', fontSize: 17,
                    fontWeight: FontWeight.w500),
              ),
            ),
            Padding(
                padding: EdgeInsets.only(left: width / 7, top: 8),
                child: Text(
                    '✣ Chronic cold'
                        '\n'
                        '✣ Eye disease'
                        '\n'
                        '✣ Baldness,Receding Hairline, Hairfall (गंजापन)'

                        '\n'
                        '✣ Thyroid',
                    style: TextStyle(
                        fontFamily: 'Baloo',
                        fontSize: 17,
                        fontWeight: FontWeight.w500
                    ))),
          ]),
          Image(
            image: AssetImage('assets/pngfuel.com.bottom.png'),
            width: width,
            height: height / 2.6,
            fit: BoxFit.fill,
          ),
        ],
      ),
    );
  }
}
