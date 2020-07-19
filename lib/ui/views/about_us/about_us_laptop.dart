import 'package:flutter/material.dart';
import 'package:shatayu/widgets/top_bar.dart';
import 'package:shatayu/widgets/top_deco.dart';
class AboutUsLaptop extends StatefulWidget {
  @override
  _AboutUsLaptopState createState() => _AboutUsLaptopState();
}

class _AboutUsLaptopState extends State<AboutUsLaptop> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: PreferredSize(child: TopBar(width: width,height: height,), preferredSize: Size.fromHeight(height)),
      body: ListView(
        children: [
          TopDeco(width: width,height: height,text: 'About Us',),
          Stack(
            children: [
              Image(
                image: AssetImage('assets/green_substitute.png'),
                  height: height/2.6,
                width: width,
                fit: BoxFit.fill,
              ),
              Center(
                child: CircleAvatar(
                  radius: 85,
                  backgroundColor: Colors.white,
                  child: CircleAvatar(
                    radius: 80,
                    backgroundImage: AssetImage('assets/lol.jpeg'),
                  ),
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
