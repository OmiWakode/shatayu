import 'package:flutter/material.dart';
import 'package:shatayu/services/call_and_messages_service.dart';
import 'package:shatayu/services/service_locator.dart';
import 'package:shatayu/widgets/info.dart';
import 'package:shatayu/widgets/mobile_top.dart';

Widget ContactUsMobile({double height, double width}){
  final CallsAndMessagesService _service = locator<CallsAndMessagesService>();
  return Material(
    color: Color.fromRGBO(187, 255, 168, 0.4),
    child: Column(
      children: [
        MobileTop(text: 'Contact us/'
        '\n'
            'Reach Us',Description: 'Locate Us', width: width, height: height),
        SizedBox(height: height/25,),
        Material(
          elevation: 2,
          child: SizedBox(
            height: height/3,
            width: width/1.5,
            child: ClipRRect(

              borderRadius: BorderRadius.circular(10),
              child: InkWell(
                onTap: () {
                  _service.launchURL();
                },
                child: Image(image: AssetImage('assets/map_mobile.jpeg'),
                fit: BoxFit.fill,),
                highlightColor: Colors.white70,
              ),
            ),
          ),
        ),
        SizedBox(
          height: height / 25,
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: width / 6, vertical: 10),
          child: GestureDetector(
            onTap: (){
              _service.call(number);
            },
            child: Material(
                color: Color.fromRGBO(1, 60, 30, 1),
                elevation: 2.0,
                borderRadius: BorderRadius.circular(10.0),
                child: Row(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      IconButton(
                        splashColor: Colors.white70,
                        tooltip: 'Call',
                        iconSize: 20,
                        color: Colors.white,
                        icon: Icon(Icons.call),
                        onPressed: () {
                          _service.call(number);
                        },
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 5),
                        child: Text(
                          '+91 9826092380',
                          style: TextStyle(
                              fontFamily: 'Oswald',
                              fontWeight: FontWeight.w600,
                              fontSize: 18,
                              color: Colors.white),
                        ),
                      ),
                    ])),
          ),
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: width / 9, vertical: 10),
          child: GestureDetector(
            onTap: (){
              _service.launchURL();
            },
            child: Material(
              color: Color.fromRGBO(1, 60, 30, 1),
              elevation: 2.0,
              borderRadius: BorderRadius.circular(10.0),
              child: Row(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: EdgeInsets.only(left: 8.0),
                    child: IconButton(
                      splashColor: Colors.white70,
                      tooltip: 'Locate on Maps',
                      iconSize: 20,
                      color: Colors.white,
                      icon: Icon(Icons.location_on),
                      onPressed: () {
                        _service.launchURL();
                      },
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 5, right: 10),
                    child: Text(
                      'E-7 LIG 376 Arera colony,'
                          '\n'
                          'Near 1100 quarters Hanuman Mandir'
                          '\n'
                          'Bhopal, (M.P.)',
                      style: TextStyle(
                          fontFamily: 'Oswald',
                          fontWeight: FontWeight.w600,
                          fontSize: 15,
                          color: Colors.white),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: width / 8, vertical: 10),
          child: GestureDetector(
            onTap: (){
              _service.sendEmail(email);
            },
            child: Material(
                color: Color.fromRGBO(1, 60, 30, 1),
                elevation: 2.0,
                borderRadius: BorderRadius.circular(10.0),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(left: 8.0),
                      child: IconButton(
                        splashColor: Colors.white70,
                        tooltip: 'Mail',
                        iconSize: 20,
                        color: Colors.white,
                        icon: Icon(Icons.mail),
                        onPressed: () {
                          _service.sendEmail(email);
                        },
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 5, right: 10),
                      child: Text(
                        'madhaviayurved@gmail.com',
                        style: TextStyle(
                            fontFamily: 'Oswald',
                            fontWeight: FontWeight.w600,
                            fontSize: 18,
                            color: Colors.white),
                      ),
                    )
                  ],
                )),
          ),
        ),
        Image(
          image: AssetImage('assets/pngfuel.com.bottom.png'),
          width: width,
          height: height / 4,
          fit: BoxFit.fill,
        ),

      ],
    ),
  );

}