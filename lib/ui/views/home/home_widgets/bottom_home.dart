import 'package:flutter/material.dart';
import 'package:shatayu/services/call_and_messages_service.dart';
import 'package:shatayu/services/service_locator.dart';
import 'package:shatayu/widgets/info.dart';

Widget BottomHome(bool mobile,{double height, double width}){
  final CallsAndMessagesService _service = locator<CallsAndMessagesService>();

  return Stack(
    children: [
      Column(
        children: [
          SizedBox(
            height: height / 6,
          ),
          Container(
            width: width,
            color: Color.fromRGBO(1, 60, 35, 1),
            height: mobile? height/3.5:height / 3,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(
                  height: height / 12,
                ),
                Text(
                  'Dr.  Madhavi Wakode',
                  style: TextStyle(
                      fontFamily: 'Baloo',
                      color: Colors.white,
                      fontSize: 20),
                ),
                Text(
                  '(B.A.M.S & D.Y.)',
                  style: TextStyle(color: Colors.white),
                ),
                Padding(
                  padding: EdgeInsets.only(
                    left: mobile?width/10:width/2.7,
                    top: mobile? height/20: height / 10,
                  ),
                  child: Row(
                    //mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      IconButton(
                        tooltip: 'E-7/LIG 376 Arera Colony Bhopal',
                        icon: Icon(
                          Icons.location_on,
                          color: Colors.white,
                        ),
                        onPressed: () {
                          _service.launchURL();
                        },
                      ),
                      SizedBox(
                        width: mobile?30:50,
                      ),
                      Container(
                        width: 0.5,
                        height: 30,
                        color: Colors.white,
                      ),
                      SizedBox(
                        width: mobile?30:50,
                      ),
                      IconButton(
                        tooltip: '+91 9826092380',
                        icon: Icon(
                          Icons.call,
                          color: Colors.white,
                        ),
                        onPressed: () {
                          _service.call(number);
                        },
                      ),
                      SizedBox(
                        width: mobile?30:50,
                      ),
                      Container(
                        width: 0.5,
                        height: 30,
                        color: Colors.white,
                      ),
                      SizedBox(
                        width: mobile?30:50,
                      ),
                      IconButton(
                        tooltip: 'madhaviayurved@gmail.com',
                        icon: Icon(Icons.mail, color: Colors.white),
                        onPressed: () {
                          _service.sendEmail(email);
                        },
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ],
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
        //backgroundImage: ,
      ),
    ],
  );
}