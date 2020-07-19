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
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(height/17),
          child: TopBar(height: height,width: width)),

      body:
      ListView(
        children: [

          TopDeco(height: height,width: width, text: 'Panchakarma Treatement',),

          Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              buildRow('Vaman', 'kj', width, height,Color(0xffffd5d1)),
              buildRow('Virechan', 'vj', width, height, Color(0xf089CFF0))
            ],
          ),
          SizedBox(
            height: height/8,
          ),
          Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              buildRow('Basti', 'kj', width, height,Color(0xfffde992)),
              buildRow('Nasya', 'vj', width, height, Color(0xffe7accf))
            ],
          ),
          SizedBox(
            height: height/8,
          ),
          Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              buildRow('RaktaMokshan', 'kj', width, height,Color(0xa0cf352e)),
              buildRow('Shirodhara', 'vj', width, height, Color(0xff50c878))
            ],
          ),
          SizedBox(
            height: height/8,
          ),
          Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              buildRow('Kareliya Massage', 'kj', width, height,Color(0xa0cf352e)),
              buildRow('Medicated Steam Bath', 'vj', width, height, Color(0xff50c878))
            ],
          ),
          SizedBox(
            height: height/8,
          ),

          Padding(
            padding:  EdgeInsets.only(left: width/10),
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
            padding: EdgeInsets.only(left: width/10,),
            child: Text('✣ Potli Massage'
                '\n'
            '✣ Agnikarma'
            '\n'
            '✣ Viddhha Chikitsa'
            '\n'
            '✣ JanuBasti,KatiBasti,GreevaBasti,HridiyaBasti,UttarBasti, Aansbasti'
                '\n'
            '✣ Netra Tarpan',style: TextStyle(
                fontFamily: 'OpenSans',
                fontSize: 20
              ),),
          ),
          Image(image: AssetImage('assets/pngfuel.com.bottom.png'),
            width: width,
            height: height/2.6,
            fit: BoxFit.fill,),
      ])
    );
  }
  Widget buildRow(String Title, String text, width, height, Color color){
    return  Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: color,
      ),
      width: width/3,
      //height: height/2,

      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Stack(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.only(topRight: Radius.circular(10), topLeft: Radius.circular(10)),
                child: Image(
                  image: AssetImage(
                      'assets/ayurved1.jpg'
                  ),
                  width: width/3,
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 130),
                child: Container(
                  width: width/3,
                  color: Colors.white30,
                  child: Center(
                    child: Text(Title,
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
              child: Text('वमन (Medicated Vomiting) '
                  'अस्थमा,औषधि द्रवों से उल्टी कराना-सर्दी, खांसी, '
                  'साइनोसाइटिस, एलर्जी, से त्वचा रोग,'
                  ' मधुमेह, ब्लड प्रेशर, माइग्रेन, मनोविकार इत्यादि रोगों का उत्कृष्ट'
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
    );
  }
}
