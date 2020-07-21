import 'package:flutter/material.dart';

import 'package:shatayu/widgets/top_bar.dart';
import 'package:shatayu/widgets/top_deco.dart';


class ContactUsLaptop extends StatefulWidget {
  @override
  _ContactUsLaptopState createState() => _ContactUsLaptopState();
}

class _ContactUsLaptopState extends State<ContactUsLaptop> {


  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Color.fromRGBO(187,255,168,0.8),
      appBar: PreferredSize(child: TopBar(width: width,height: height,), preferredSize: Size.fromHeight(height)),
      body: ListView(
        children: [
          TopDeco(width: width,height: height,text: 'Contact',),
          Row(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              IconButton(
                iconSize: 20,
                tooltip: 'E-7/LIG 376 Arera Colony Bhopal',
                icon : Icon
                  (
                  Icons.location_on,color: Colors.white,
                ),

              ),
            ],
          )

        ],
      ),
    );
  }
}
