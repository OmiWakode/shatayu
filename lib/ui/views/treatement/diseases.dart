import 'package:flutter/material.dart';

class Diseases extends StatelessWidget {
  final bool mobile;
  final double height;
  final double width;

  Diseases({required this.mobile, required this.height, required this.width});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment:
          mobile ? CrossAxisAlignment.center : CrossAxisAlignment.start,
      children: [
        Padding(
          padding: mobile
              ? EdgeInsets.only(left: width / 20, top: 10)
              : EdgeInsets.only(left: width / 10, top: height / 20),
          child: Text(
            ' Vata Roga - Pain Releif',
            style: TextStyle(
                fontFamily: 'Baloo',
                fontSize: 18,
                color: Colors.red, //Color.fromRGBO(46, 139, 87, 1),
                fontWeight: FontWeight.w700),
          ),
        ),
        Padding(
          padding: mobile
              ? EdgeInsets.only(top: 8)
              : EdgeInsets.only(left: width / 9, top: 8),
          child: Row(
              mainAxisAlignment: mobile
                  ? MainAxisAlignment.spaceEvenly
                  : MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  '✣ Arthritis'
                  '\n'
                      '✣ Rheumatoid '
                      '\n'
                      '     Arthritis'
                  '\n'
                  '✣ Slip Disk'
                  '\n'
                  '✣ Back ache'
                  '\n'
                  ,
                  softWrap: true,
                  style: TextStyle(
                      fontFamily: 'Baloo',
                      fontSize: mobile ? 15 : 17,
                      fontWeight: FontWeight.w500),
                ),
                Padding(
                  padding: mobile
                      ? EdgeInsets.all(0)
                      : EdgeInsets.only(left: width / 5),
                  child: Text(
                      '✣ Neck pain '
                      '\n'
                      '✣ Sciatica'
                      '\n'
                      '✣ Frozen Shoulder'
                      '\n'
                          '✣ Migraine'
                      '\n'
                      '✣ And others',
                      softWrap: true,
                      style: TextStyle(
                          fontFamily: 'Baloo',
                          fontSize: mobile ? 15 : 17,
                          fontWeight: FontWeight.w500)),
                ),
              ]),
        ),
        Padding(
          padding: mobile
              ? EdgeInsets.only(left: width / 20, top: height / 15)
              : EdgeInsets.only(left: width / 10, top: height / 20),
          child: Text(
            ' Skin Disorders:  Effective treatment',
            style: TextStyle(
                fontFamily: 'Baloo',
                fontSize: 18,
                color: Colors.red, //Color.fromRGBO(46, 139, 87, 1),
                fontWeight: FontWeight.w700),
          ),
        ),
        Padding(
          padding: mobile
              ? EdgeInsets.only(top: 8)
              : EdgeInsets.only(left: width / 9, top: 8),
          child: Row(
            mainAxisAlignment: mobile
                ? MainAxisAlignment.spaceEvenly
                : MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                '✣ Psoriasis'
                '\n'
                '✣ Allergy'
                '\n'
                '✣ Acne, Pimples, Boils'
                '\n'
                    '✣ Baldness,'
                    '\n'
                    '✣ Hairfall',
                style: TextStyle(
                    fontFamily: 'Baloo',
                    fontSize: mobile ? 15 : 17,
                    fontWeight: FontWeight.w500),
              ),
              Padding(
                padding: mobile
                    ? EdgeInsets.all(0.0)
                    : EdgeInsets.only(left: width / 5),
                child: Text(
                  '✣ Eczema'
                  '\n'
                  '✣ Herpes'
                  '\n'
                  '✣ Wrinkles, Dark Spots',
                  style: TextStyle(
                      fontFamily: 'Baloo',
                      fontSize: mobile ? 15 : 17,
                      fontWeight: FontWeight.w500),
                ),
              ),
            ],
          ),
        ),
        Padding(
          padding: mobile
              ? EdgeInsets.only(top: height / 15)
              : EdgeInsets.only(left: width / 10, top: height / 20),
          child: Text(
            'Digestive disorders - Digest your worries',
            style: TextStyle(
                fontFamily: 'Baloo',
                fontSize: 18,
                color: Colors.red, //Color.fromRGBO(46, 139, 87, 1),
                fontWeight: FontWeight.w700),
          ),
        ),
        Padding(
          padding: mobile
              ? EdgeInsets.only(top: 8)
              : EdgeInsets.only(left: width / 9, top: 8),
          child: Row(
            mainAxisAlignment: mobile
                ? MainAxisAlignment.spaceEvenly
                : MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                '✣ Jaundice (पीलिया)'
                '\n'
                '✣ Constipation (कब्ज)'
                '\n'
                '✣ Amoebiasis'
                '\n'
                '✣ IBS '
                '\n'
                '    (Irritable Bowel Syndrome)',
                style: TextStyle(
                    fontFamily: 'Baloo',
                    fontSize: mobile ? 15 : 17,
                    fontWeight: FontWeight.w500),
              ),
              Padding(
                padding: mobile
                    ? EdgeInsets.all(0)
                    : EdgeInsets.only(left: width / 5),
                child: Text(
                  '✣ Diarrhoea '
                  '\n'
                  '✣ Ulcer colitis'
                  '\n'
                  '✣ Acidity',
                  style: TextStyle(
                      fontFamily: 'Baloo',
                      fontSize: mobile ? 15 : 17,
                      fontWeight: FontWeight.w500),
                ),
              ),
            ],
          ),
        ),
        Padding(
          padding: mobile
              ? EdgeInsets.only(top: height / 15)
              : EdgeInsets.only(left: width / 10, top: height / 20),
          child: Text(
            ' Women\'s Disorders',
            style: TextStyle(
                fontFamily: 'Baloo',
                fontSize: 18,
                color: Colors.red, //Color.fromRGBO(46, 139, 87, 1),
                fontWeight: FontWeight.w700),
          ),
        ),
        Padding(
          padding: mobile
              ? EdgeInsets.only(top: 8)
              : EdgeInsets.only(left: width / 9, top: 8),
          child: Row(
            mainAxisAlignment: mobile
                ? MainAxisAlignment.spaceEvenly
                : MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                '✣ Menstrual problems'
                '\n'
                '✣ Infertility (बांझपन)'
                '\n'
                '✣ White Discharge',
                style: TextStyle(
                    fontFamily: 'Baloo',
                    fontSize: mobile ? 15 : 17,
                    fontWeight: FontWeight.w500),
              ),
              Padding(
                padding: mobile
                    ? EdgeInsets.all(0)
                    : EdgeInsets.only(left: width / 5),
                child: Text(
                  '✣ PCOD'
                  '\n'
                  '✣ Ovarian Cyst'
                  '\n'
                  '✣ Uterine '
                  '\n'
                  '     inflammation',
                  style: TextStyle(
                      fontFamily: 'Baloo',
                      fontSize: mobile ? 15 : 17,
                      fontWeight: FontWeight.w500),
                ),
              ),
            ],
          ),
        ),
        Padding(
          padding: mobile
              ? EdgeInsets.only(top: height / 15)
              : EdgeInsets.only(left: width / 10, top: height / 20),
          child: Text(
            ' Other Diseases',
            style: TextStyle(
                fontFamily: 'Baloo',
                fontSize: 18,
                color: Colors.red, //Color.fromRGBO(46, 139, 87, 1),
                fontWeight: FontWeight.w700),
          ),
        ),
        Padding(
          padding: mobile
              ? EdgeInsets.only(top: 8)
              : EdgeInsets.only(left: width / 9, top: 8),
          child: Row(
              mainAxisAlignment: mobile
                  ? MainAxisAlignment.spaceEvenly
                  : MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  '✣ Asthama'
                  '\n'
                  '✣ Diabetes'
                  '\n'
                  '✣ Obesity'
                  '\n'
                  '✣ Blood pressure'
                  '\n',
                  style: TextStyle(
                      fontFamily: 'Baloo',
                      fontSize: mobile ? 15 : 17,
                      fontWeight: FontWeight.w500),
                ),
                Padding(
                  padding: mobile
                      ? EdgeInsets.all(0)
                      : EdgeInsets.only(left: width / 5),
                  child: Text(
                      '✣ Chronic cold'
                      '\n'
                      '✣ Eye disease'
                      '\n'
                      '✣ Thyroid',

                      style: TextStyle(
                          fontFamily: 'Baloo',
                          fontSize: mobile ? 15 : 17,
                          fontWeight: FontWeight.w500)),
                ),
              ]),
        ),
        SizedBox(
          height: height / 20,
        ),
        Center(
          child: Container(
            width: width / 1.6,
            height: 0.8,
            color: Colors.red,
          ),
        ),
        SizedBox(
          height: height / 20,
        ),
        Center(
          child: Text(
            'Speciality Treatment for pregnant women and infants',
            textAlign: TextAlign.center,
            softWrap: true,
            style: TextStyle(
                fontFamily: 'Baloo',
                fontSize: 18,
                color: Colors.red, //Color.fromRGBO(46, 139, 87, 1),
                fontWeight: FontWeight.w700),
          ),
        ),
        Center(
          child: Padding(
            padding:
                mobile ? EdgeInsets.only(left: width / 20) : EdgeInsets.all(0),
            child: Text(
              '\n'
              '✣ Garbh Sanskar (गर्भ संस्कार)- For better development of child in the womb'
              '\n'
              '✣ Suvarna Prashana(सुवर्ण प्राशन संस्कार) (0- 12 year kids): For increasing the child\'s immunity and intelligence',
              softWrap: true,
              //textAlign: TextAlign.center,
              style: TextStyle(
                  fontFamily: 'Baloo',
                  fontSize: mobile ? 15 : 17,
                  fontWeight: FontWeight.w500),
            ),
          ),
        )
      ],
    );
  }
}
