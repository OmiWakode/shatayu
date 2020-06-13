/*This file contains the home view of laptop, in landscape mode

 */

import 'package:carousel_slider/carousel_slider.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';

import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

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
    return ListView(
      children: [
        SafeArea(
            child: Material(
          child: Stack(
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
              Stack(
                children: [
                  Padding(
                    padding: EdgeInsets.only(top: height/12, left: width/10),
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
                    padding:  EdgeInsets.only(left: width/10, top: height/9),
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
                  )],
              ),
          Padding(
            padding:  EdgeInsets.only(left: width/1.7, top: height/17),
            child: GNav(
                gap: 8,
                activeColor: Colors.white,
                iconSize: 30,
                padding: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
                duration: Duration(milliseconds: 800),
                tabBackgroundColor: Color.fromRGBO(1, 60, 30, .8),
                tabs: [
                  GButton(
                    icon: Icons.home,
                    text: 'Home',
                  ),
                  GButton(
                    icon: Icons.filter_b_and_w,
                    text: 'Panchakarma',
                  ),
                  GButton(
                    icon: Icons.local_hospital,
                    text: 'Treatement',
                  ),
                  GButton(
                    icon: Icons.portrait,
                    text: 'About us',
                  ),
                ],
                color: Colors.white,
                selectedIndex: _selectedIndex,
                onTabChange: (index) {
                  setState(() {
                    _selectedIndex = index;
                  });
                }
                ),

                ),

            ],
          ),

        )),
        CarouselSlider(
            items: items,
            options:
            CarouselOptions(
              height: height/2,
              aspectRatio: 16/9,
              viewportFraction: 0.5,
              initialPage: 0,
              enableInfiniteScroll: true,
              pauseAutoPlayOnTouch: true,
              reverse: false,
              autoPlay: true,
              autoPlayInterval: Duration(seconds: 5),
              autoPlayAnimationDuration: Duration(milliseconds: 800),
              autoPlayCurve: Curves.fastOutSlowIn,
              enlargeCenterPage: false,
              scrollDirection: Axis.horizontal,
            )
        )
      ],
    );
  }
}
