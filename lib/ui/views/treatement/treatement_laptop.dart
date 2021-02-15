import 'package:flutter/material.dart';
import 'package:shatayu/widgets/top_bar.dart';
import 'package:shatayu/widgets/top_deco.dart';

import 'diseases.dart';

class TreatementLaptop extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: Color.fromRGBO(187, 255, 168, 0.8),
      appBar: PreferredSize(
          preferredSize: Size.fromHeight(height / 17),
          child: TopBar(height: height, width: width)),
      body: ListView(
        children: [
          TopDeco(
            height: height,
            width: width,
            text: 'Diseases',
          ),
          Padding(
            padding: EdgeInsets.only(left: width / 10),
            child: Text(
              'The best treatment on all the following diseases by Ayurvedic medicine and Panchakarma therapy:'
              ,
              style: TextStyle(
                  fontFamily: 'Baloo',
                  fontSize: 20,
                  fontWeight: FontWeight.w700,
                  color: Color.fromRGBO(1, 60, 30, 1)),
              softWrap: true,
            ),
          ),
          Diseases(mobile: false, width: width, height: height),

          Image(
            image: AssetImage('assets/pngfuel.com.bottom.png'),
            width: width,
            height: height / 5,
            fit: BoxFit.fill,
          ),
        ],
      ),
    );
  }
}
