import 'package:flutter/material.dart';
import 'package:shatayu/services/call_and_messages_service.dart';
import 'package:shatayu/services/service_locator.dart';

import 'package:shatayu/widgets/top_bar.dart';
import 'package:shatayu/widgets/top_deco.dart';

class ContactUsLaptop extends StatefulWidget {
  @override
  _ContactUsLaptopState createState() => _ContactUsLaptopState();
}

class _ContactUsLaptopState extends State<ContactUsLaptop> {
  final CallsAndMessagesService _service = locator<CallsAndMessagesService>();
  final String number = "+919826092380";
  final String email = "madhaviayurved@gmail.com";

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Color.fromRGBO(187, 255, 168, 0.8),
      appBar: PreferredSize(
        child: TopBar(
          width: width,
          height: height,
        ),
        preferredSize: Size.fromHeight(height / 17),
      ),
      body: ListView(
        children: [
          TopDeco(
            width: width,
            height: height,
            text: 'Contact Us/Reach Us',
          ),
          SizedBox(
            height: height / 25,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 90, vertical: 10),
            child: Material(
              elevation: 10,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: InkWell(
                  onTap: () {
                    _service.launchURL();
                  },
                  child: Image.asset('assets/map.png'),
                  highlightColor: Colors.white70,
                ),
              ),
            ),
          ),
          SizedBox(
            height: height / 25,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: width / 3, vertical: 10),
            child: Material(
                color: Color.fromRGBO(1, 60, 30, 1),
                elevation: 16.0,
                borderRadius: BorderRadius.circular(10.0),
                child: Row(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      IconButton(
                        splashColor: Colors.white70,
                        tooltip: 'Call',
                        iconSize: 40,
                        color: Colors.white,
                        icon: Icon(Icons.call),
                        onPressed: () {
                          _service.call(number);
                        },
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 8),
                        child: Text(
                          '+91 9826092380',
                          style: TextStyle(
                              fontFamily: 'Oswald',
                              fontWeight: FontWeight.w600,
                              fontSize: 20,
                              color: Colors.white),
                        ),
                      ),
                    ])),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: width / 3, vertical: 10),
            child: Material(
              color: Color.fromRGBO(1, 60, 30, 1),
              elevation: 16.0,
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
                      iconSize: 40,
                      color: Colors.white,
                      icon: Icon(Icons.location_on),
                      onPressed: () {
                        _service.launchURL();
                      },
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 8, right: 10),
                    child: Text(
                      'E-7 LIG 376 Arera colony,'
                      '\n'
                      'Near 1100 quarters Hanuman Mandir'
                      '\n'
                      'Bhopal, (M.P.)',
                      style: TextStyle(
                          fontFamily: 'Oswald',
                          fontWeight: FontWeight.w600,
                          fontSize: 20,
                          color: Colors.white),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: width / 3, vertical: 10),
            child: Material(
                color: Color.fromRGBO(1, 60, 30, 1),
                elevation: 16.0,
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
                        iconSize: 40,
                        color: Colors.white,
                        icon: Icon(Icons.mail),
                        onPressed: () {
                          _service.sendEmail(email);
                        },
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 8, right: 10),
                      child: Text(
                        'madhaviayurved@gmail.com',
                        style: TextStyle(
                            fontFamily: 'Oswald',
                            fontWeight: FontWeight.w600,
                            fontSize: 20,
                            color: Colors.white),
                      ),
                    )
                  ],
                )),
          ),
          Image(
            image: AssetImage('assets/pngfuel.com.bottom.png'),
            width: width,
            height: height / 2.6,
            fit: BoxFit.fill,
          ),
        ],
      ),
    );
  }
}
