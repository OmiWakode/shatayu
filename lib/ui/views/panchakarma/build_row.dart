import 'package:flutter/material.dart';

class BuildRow extends StatelessWidget {
  final bool mobile;
  final String title;
  final String text;
  final double width;
  final double height;
  final Color color;
  final String img;

  BuildRow(this.mobile,
  {required this.title,
  required this.text,
  required this.width,
  required this.height,
  required this.color,
  required this.img});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: color,
      ),
      width: mobile ? width / 2.1 : width / 3,
      //height: height/2,

      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Stack(
            children: [
              SizedBox(
                height: mobile ? height / 4 : height / 3.9,
                child: ClipRRect(
                    borderRadius: BorderRadius.only(
                        topRight: Radius.circular(10),
                        topLeft: Radius.circular(10)),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Image.asset(
                          img,
                          fit: BoxFit.fill,
                          width: mobile ? width / 2.1 : width / 3,
                        ),
                      ],
                    )),
              ),
              Padding(
                padding: mobile
                    ? EdgeInsets.only(top: height / 5.4)
                    : EdgeInsets.only(top: 130),
                child: Material(
                  color: mobile ? Colors.white70 : Colors.white30,
                  //width: mobile?width/2.1:width / 3,
                  child: Center(
                    child: Text(
                      title,
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontFamily: 'OpenSans',
                        fontSize: mobile ? 18 : 30,
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
              child: Text(
                text,
                style:
                TextStyle(fontFamily: 'Baloo', fontSize: mobile ? 14.1 : 17),
                softWrap: true,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
