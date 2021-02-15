import 'package:flutter/material.dart';

import 'build_row.dart';
import 'matter.dart';

class BuildTiles extends StatelessWidget {
  final double height;
  final double width;
  final bool mobile;
  BuildTiles(this.mobile,
      {required this.height, required this.width});
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            BuildRow(mobile,
                title: Vaman,
                text: VamanDesc,
                width: width,
                height: height,
                color: Color(0xffffd5d1),
                img: 'assets/vamana_og.gif'),
            BuildRow(mobile,
                title: Virechan,
                text: VirechanDesc,
                width: width,
                height: height,
                color: Color(0xf089CFF0),
                img: 'assets/virechan.jpg')
          ],
        ),
        SizedBox(
          height: mobile ? height / 20 : height / 8,
        ),
        Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            BuildRow(mobile,
                title: Basti,
                text: BastiDesc,
                width: width,
                height: height,
                color: Color(0xfffde992),
                img: 'assets/Basti-.jpg'),
            BuildRow(mobile,
                title: Nasya,
                text: NasyaDesc,
                width: width,
                height: height,
                color: Color(0xffe7accf),
                img: 'assets/nasyam.jpg')
          ],
        ),
        SizedBox(
          height: mobile ? height / 20 : height / 8,
        ),
        Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            BuildRow(mobile,
                title: RaktaMokshan,
                text: RaktaMokshanDesc,
                width: width,
                height: height,
                color: Color(0xa0cf352e),
                img: 'assets/DSC03103.JPG'),
            BuildRow(mobile,
                title: Shirodhara,
                text: ShirodharaDesc,
                width: width,
                height: height,
                color: Color.fromRGBO(244, 164, 96, 1),
                img: 'assets/shirodhara1.jpg')
          ],
        ),
        SizedBox(
          height: mobile ? height / 20 : height / 8,
        ),
        Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            BuildRow(mobile,
                title: Massage,
                text: MassageDesc,
                width: width,
                height: height,
                color: Color(0xfff4C4B2),
                img: 'assets/Massage_therapy.jpg'),
            BuildRow(mobile,
                title: SteamBath,
                text: SteamBathDesc,
                width: width,
                height: height,
                color: Color(0xff50c878),
                img: 'assets/steambathjpg.jpg')
          ],
        ),
      ],
    );
  }
}
