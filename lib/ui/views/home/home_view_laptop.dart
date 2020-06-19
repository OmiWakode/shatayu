/*This file contains the home view of laptop, in landscape mode

 */

import 'package:carousel_slider/carousel_slider.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';

import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:shatayu/ui/views/panchakarma/panchakarma_laptop.dart';
import 'package:shatayu/widgets/nav_bar.dart';
import 'package:shatayu/widgets/top_bar.dart';

class HomeViewLaptop extends StatefulWidget {
  @override
  _HomeViewLaptopState createState() => _HomeViewLaptopState();
}

class _HomeViewLaptopState extends State<HomeViewLaptop> {

  int _selectedIndex = 0;





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


    final List<Widget> items = [
      Material(
        elevation: 10.0,
        child: ClipRRect(
          borderRadius: BorderRadius.circular(5.0),
          child: Image(
            image: AssetImage('assets/ayurved1.jpg'),
            fit: BoxFit.fill,
          ),
        ),
      ),
      Material(
        elevation: 10.0,
        child: ClipRRect(
          borderRadius: BorderRadius.circular(5.0),
          child: Image(
            image: AssetImage('assets/potli.jpg'),
            fit: BoxFit.fill,
            width: width/2.2,
          ),
        ),
      ),
      Material(
        elevation: 10.0,
        child: ClipRRect(
          borderRadius: BorderRadius.circular(5.0),
          child: Image(image: AssetImage('assets/shirodhara1.jpg'), fit: BoxFit.fill,
          width: width/2.2,),
        ),
      )
    ];

// Build
    return Scaffold(
      body: Scrollbar(
        isAlwaysShown: true,
        controller: ScrollController(
          //keepScrollOffset: false,

        ),
        child: ListView(
          children: [
            TopBar(height: height,width: width),

            Stack(
            children: [
              Image(
              image: AssetImage('assets/green_2.png'),
              fit: BoxFit.fill,
              width: width,
              height: height /2,
            ),
              Padding(
              padding: const EdgeInsets.only(left: 25, top: 30),
              child: Image(
                image: AssetImage('assets/logo.png'),
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
                      color: Color.fromRGBO(1, 60, 30, 1),
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
                      height: height*3/4,
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
                        child: Text('स्वास्थ्य एवं सौन्दर्य के लिए दुनिया ने रासायनिक प्रसाधन और दवाईयों के दुष्परिणाम देख चुके हैं और आज मनुष्य पुनः प्रकृति की ओर आ रहा । '
                            'आयुर्वेद भारत की 5000 साल पुरानी चिकित्सा पद्धति है। जो जीवन को स्वस्थ एवं संतुलित बनाती है। '
                            'यह केवल चिकित्सा पद्धति ही नहीं, यह जीवन का विज्ञान है, जो हमें जीवन जीना सिखाता है।',
                          softWrap: true,
                          style: TextStyle(
                              fontFamily: 'Baloo',
                              fontSize: 20,
                              fontWeight: FontWeight.w500

                          ),),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: height/9),
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
                        'शास्त्रोक्त पंचकर्म चिकित्सा',style:  TextStyle(
                          fontFamily: 'PathwayGothic',
                          fontSize: 30,
                          fontWeight: FontWeight.w700,
                          color: Color.fromRGBO(1,65,30,1)
                      )
                      )
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 220,right: 220, top: 30),
                      child: Center(
                        child: Text(' जिस तरह कोई भी गाड़ी या मशीन को समय समय पर '
                            'Oiling एवं Servicing की आवश्यकता होती है, उसी तरह हमारा शरीर भी मशीन की तरह ही है, जिसेनियमित रूप से Oiling '
                            'एवं Servicing की जरूरत होती है, यह कार्य पंचकर्म के द्वारा ही साध्य हो सकता है। '
                            'जिससे हमारी रोगप्रतिकारक क्षमता (Immune System) '
                            'बढ़कर भविष्य में होने वाली संभावितबीमारियों से बचा जा सकता है।',
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
                            height: height/10,
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
                            padding: EdgeInsets.only(left: width/3,top: height/10),
                            child: Row(
                              children: [
                                Icon(Icons.location_on,color: Colors.white,),
                                SizedBox(width: 50,),
                                Container(width: 0.5,height: 30,color: Colors.white,),
                                SizedBox(width: 50,),
                                Icon(Icons.mail,color: Colors.white),
                                SizedBox(width: 50,),
                                Container(width: 0.5,height: 30,color: Colors.white,),
                                SizedBox(width: 50,),
                                Icon(Icons.insert_emoticon,color: Colors.white),
                                SizedBox(width: 50,),
                                Container(width: 0.5,height: 30,color: Colors.white),
                                SizedBox(width: 50,),
                                Icon(Icons.free_breakfast,color: Colors.white)
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
