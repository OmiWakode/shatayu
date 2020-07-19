/*This file contains the home view of laptop, in landscape mode

 */

import 'package:carousel_slider/carousel_slider.dart';

import 'package:flutter/material.dart';
import 'package:shatayu/services/call_and_messages_service.dart';
import 'package:shatayu/services/service_locator.dart';

import 'package:shatayu/widgets/nav_bar.dart';
import 'package:shatayu/widgets/top_bar.dart';

class HomeViewLaptop extends StatefulWidget {
  @override
  _HomeViewLaptopState createState() => _HomeViewLaptopState();
}

class _HomeViewLaptopState extends State<HomeViewLaptop> {


  final CallsAndMessagesService _service = locator<CallsAndMessagesService>();
  final String number = "+919826092380";
  final String email = "madhaviayurved@gmail.com";





  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;

    final List<Widget> cir = [
      CircleAvatar(
        radius: 105,
        backgroundColor: Colors.black12,
        child: CircleAvatar(
          radius: 100,
          backgroundImage: AssetImage('assets/lol.jpeg'),
        ),
      ),
      CircleAvatar(
        radius: 105,
        backgroundColor: Colors.black12,
        child: CircleAvatar(
          radius: 100,
          backgroundImage: AssetImage('assets/ayurved1.jpg'),
        ),
      ),
      CircleAvatar(
        radius: 105,
        backgroundColor: Colors.black12,
        child: CircleAvatar(
          radius: 100,
          backgroundImage: AssetImage('assets/potli.jpg'),
        ),
      ),
      CircleAvatar(
        radius: 105,
        backgroundColor: Colors.black12,
        child: CircleAvatar(
          radius: 100,
          backgroundImage: AssetImage('assets/shirodhara1.jpg'),
        ),
      ),
    ];



// Build
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(height/17),
      child: TopBar(height: height,width: width)),
      body: Scrollbar(
        isAlwaysShown: false,
        child: ListView(
            children: [
              Stack(
              children: [
                Image(
            image: AssetImage('assets/light-green-background-wallpaper-3.jpg'),
                  fit: BoxFit.fill,
                  height: height/2,
                  width: width,
        ),
                Image(
                image: AssetImage('assets/green_2.png'),
                fit: BoxFit.fill,
                width: width,
                height: height /2,
              ),
                Padding(
                padding: const EdgeInsets.only(left: 25, top: 30),
                child: Image(
                  image: AssetImage('assets/logo_1.png'),
                  height: 100,
                  width: 100,
                ),
              ),
                Padding(
                  padding: EdgeInsets.only(top: height/7, left: width/10),
                  child: Text(
                    'Dr. Madhavi\'s',
                    style: TextStyle(
                        fontFamily: 'GreatVibes',
                        fontWeight: FontWeight.w800,
                        color: Colors.red,
                        fontSize: 30),
                  ),
                ),
                Padding(
                  padding:  EdgeInsets.only(left: width/10, top: height/6),
                  child: Text(
                    'Shatayu Ayurveda Panchakarma'
                        '\n'
                        'Super Speciality Clinic',
                    style: TextStyle(
                        fontFamily: 'Oswald',
                        fontWeight: FontWeight.w600,
                        fontSize: 50,
                        color: //Colors.white
                      Color.fromRGBO(1, 60, 30, 1),
                  ),
                ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: width/10, top: height/2.5),
                  child: Text('Authenittically serving since 15 years..',
                    style: TextStyle(
                      fontFamily: 'GreatVibes',
                      color: Color.fromRGBO(46,139,87,1),
                      fontSize: 40,
                      fontWeight: FontWeight.w500

                    ),
                  ),
                ),

                NavBar(height: height,width: width),
/*


*/
              ],
              ),

              SizedBox(
                height: 20,
              ),
              CarouselSlider(
                  items: cir,
                  options:
                  CarouselOptions(
                    height: height/2,
                    aspectRatio: 16/9,
                    viewportFraction: .2,
                    initialPage: 0,
                    enableInfiniteScroll: true,
                    pauseAutoPlayOnTouch: true,
                    reverse: false,
                    autoPlay: true,
                    autoPlayInterval: Duration(seconds: 10),
                    autoPlayAnimationDuration: Duration(milliseconds: 800),
                    autoPlayCurve: Curves.fastOutSlowIn,
                    enlargeCenterPage: false,
                    scrollDirection: Axis.horizontal,
                  )
              ),
              SizedBox(
                height: height/7.5,
              ),
              Stack(
                children: [
                  Center(
                    child: Material(
                      borderRadius: BorderRadius.circular(10.0),
                        child: Image(image: AssetImage('assets/171.jpg'),
                        width: width/1.2,
                        height: height*3.2/4,
                        fit: BoxFit.fill,)),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(top: 8.0),
                        child: Center(
                          child: Text('Ayurveda - Treat the root cause',
                            softWrap: true,
                            style: TextStyle(
                                fontFamily: 'PathwayGothic',
                                fontSize: 40,
                                fontWeight: FontWeight.w700,
                                color: Color.fromRGBO(1,65,30,1)
                            ),),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 220,right: 220, top: 30),
                        child: Center(
                          child: Text('For health and beauty, the world has seen the ill effects of chemicals and medicines. Today man is coming back to nature. '
                              'Ayurveda is India\'s 5000 year old medical practice,which makes life healthy and balanced. '
                            'It is not only medical practice, it is the science of life, which teaches us how to live life.',
                            softWrap: true,
                            style: TextStyle(
                                fontFamily: 'Baloo',
                                fontSize: 20,
                                fontWeight: FontWeight.w500

                            ),),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: height/15),
                        child: Center(
                        child: Text(
                          ' Purification, Servicing & Oiling',style:  TextStyle(
                            fontFamily: 'PathwayGothic',
                            fontSize: 40,
                            fontWeight: FontWeight.w700,
                            color: Color.fromRGBO(1,65,30,1)
                        )
                        ),
                        ),
                      ),

                      Center(
                        child: Text(
                          'Authentic Panchakarma therapy',style:  TextStyle(
                            fontFamily: 'PathwayGothic',
                            fontSize: 35,
                            fontWeight: FontWeight.w700,
                            color: Color.fromRGBO(1,65,30,1)
                        )
                        )
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 220,right: 220, top: 30),
                        child: Center(
                          child: Text('In Any other vehicle or machine ,timely '
                              'Oiling and Servicing is required.'
                            'Similarly, our body is a machine, which requires  regular Oiling'
                            ' and servicing for proper it\'s functioning. This work can only be fulfilled by Panchakarma, '
                            ' thereby boosting Our Immune System'
                            ' and thus the reducing the chance of potential diseases affecting us',
                            softWrap: true,
                            style: TextStyle(
                                fontFamily: 'Baloo',
                                fontSize: 20,
                                fontWeight: FontWeight.w500

                            ),),
                        ),
                      ),
                    ],
                  )
                ],
              ),
              SizedBox(
                height: height/7,
              ),
              Stack(
                children: [
                  Column(
                    children: [
                      SizedBox(
                        height: height/6,
                      ),
                      Container(
                        width: width,

                        color: Color.fromRGBO(1,60,35,1),
                        height: height/3,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            SizedBox(
                              height: height/12,
                            ),
                            Text('Dr.  Madhavi Wakode',style: TextStyle(
                                  fontFamily: 'Baloo',
                              color: Colors.white,
                                fontSize: 20
                                 ),),
                            Text('(B.A.M.S & D.Y.)',style: TextStyle(
                              color: Colors.white
                            ),),
                            Padding(
                              padding: EdgeInsets.only(//left: width/2.7,
                                top: height/10,),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  IconButton(
                                  tooltip: 'E-7/LIG 376 Arera Colony Bhopal',
                                      icon : Icon
                                    (
                                    Icons.location_on,color: Colors.white,
                                  ),
                                    onPressed: (){
                                    _service.launchURL();
                                    },
                                  ),
                                  SizedBox(width: 50,),
                                  Container(width: 0.5,height: 30,color: Colors.white,),
                                  SizedBox(width: 50,),
                                  IconButton(tooltip: '+91 9826092380',icon: Icon(Icons.call, color: Colors.white,),
                                  onPressed: (){
                                    _service.call(number);
                                  },),
                                  SizedBox(width: 50,),
                                  Container(width: 0.5,height: 30,color: Colors.white,),
                                  SizedBox(width: 50,),
                                  IconButton(
                                    tooltip: 'madhaviayurved@gmail.com',
                                    icon: Icon(
                                      Icons.mail,color: Colors.white
                                  ),
                                  onPressed: (){
                                    _service.sendEmail(email);
                                  },),
                                  SizedBox(width: 50,),
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
              ),
            ],
          ),
        ),
      );
  }
}
