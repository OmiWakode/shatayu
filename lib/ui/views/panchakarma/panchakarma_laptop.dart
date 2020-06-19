import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:shatayu/widgets/nav_bar.dart';
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
      body: ListView(
        children: [
          TopBar(height: height,width: width),

          TopDeco(height: height,width: width, text: 'Panchakarma Treatement',),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 200),
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Color(0xffffd5d1),
              ),
             width: width/2,
              height: height/3,

              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,


                  children: [
                    Center(
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(10),
                        child: Image(
                          image: AssetImage(
                              'assets/ayurved1.jpg'
                          ),
                          width: 300,
                          height: 300,
                        ),
                      ),
                    ),

                    Column(

                      children: [
                        Text('Vaman',
                          style: TextStyle(
                              fontFamily: 'OpenSans',
                              fontSize: 30
                          ),),

                        Center(
                          child: Padding(
                            padding: EdgeInsets.only(top: 20,left: 16 ),
                            child: Text('वमन (Medicated Vomiting) '
                                'अस्थमा,औषधि द्रवों से उल्टी कराना-सर्दी, खांसी, '
                                  '\n'
                                'साइनोसाइटिस, एलर्जी, से त्वचा रोग,'
                                ' मधुमेह, ब्लड प्रेशर, माइग्रेन, मनोविकार इत्यादि रोगों का उत्कृष्ट'
                            '\n'
                                ' उपचार।',
                            style: TextStyle(
                              fontFamily: 'Baloo',
                              fontSize: 17
                            ),
                            softWrap: true,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          )



        ],
      ),
    );
  }
}
