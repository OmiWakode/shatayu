import 'package:flutter/material.dart';

import 'build_row.dart';
import 'matter.dart';

Widget BuildTiles(bool mobile, {double height, double width }){
  return Column(
    children: [
      Row(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          buildRow(mobile,Title: Vaman, text: VamanDesc,
              width: width, height : height, color: Color(0xffffd5d1), img: 'assets/vaman.png'),
          buildRow(mobile,Title: Virechan, text: VirechanDesc,
              width:  width, height: height, color: Color(0xf089CFF0), img: 'assets/virechan.jpg')
        ],
      ),
      SizedBox(
        height: mobile?height/20:height / 8,
      ),
      Row(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          buildRow(mobile,Title: Basti, text: BastiDesc,
              width: width, height: height, color: Color(0xfffde992) ,img: 'assets/Basti-.jpg'),
          buildRow(mobile,Title: Nasya, text: NasyaDesc,
              width: width, height: height, color: Color(0xffe7accf), img: 'assets/nasyam.jpg')
        ],
      ),
      SizedBox(
        height: mobile?height/20:height / 8,
      ),
      Row(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          buildRow(mobile,Title: RaktaMokshan, text: RaktaMokshanDesc, width: width, height: height,
              color: Color(0xa0cf352e) ,img: 'assets/ayurved1.jpg'),
          buildRow(mobile,Title: Shirodhara,text: ShirodharaDesc,width: width,height: height,
              color: Color.fromRGBO(244,164,96, 1), img: 'assets/shirodhara1.jpg')
        ],
      ),
      SizedBox(
        height: mobile?height/20:height / 8,
      ),
      Row(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          buildRow(mobile,
              Title: Massage, text: MassageDesc, width:width, height:height,
              color: Color(0xfff4C4B2), img: 'assets/ayurved1.jpg'),
          buildRow(mobile,Title: SteamBath, text: SteamBathDesc,width: width, height:height,
              color: Color(0xff50c878),img: 'assets/ayurved1.jpg')
        ],
      ),

    ],
  );
}