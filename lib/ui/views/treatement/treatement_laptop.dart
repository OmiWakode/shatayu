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
      body: ListView(
        children: [
          TopBar(height: height, width: width),
          TopDeco(height: height,width: width,text: 'Treatement Diseases',)
        ],
      ),
    );
  }
}
