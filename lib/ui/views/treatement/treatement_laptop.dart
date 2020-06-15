import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class TreatementLaptop extends StatefulWidget {
  @override
  _TreatementLaptopState createState() => _TreatementLaptopState();
}

class _TreatementLaptopState extends State<TreatementLaptop> {

  int _selectedindex = 1;
  @override
  Widget build(BuildContext context) {

    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      body: ListView(
        children: [
          Container(
            color: Color.fromRGBO(46,139,87,1),
            height: height/17,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(width: width/20),
                Icon(Icons.home,color: Colors.white,),
                SizedBox(width: 10,),
                Text('E-7/LIG 376,Arera Colony,Bhopal',
                style: TextStyle(
                  fontFamily: 'Baloo',
                  color: Colors.white
                ),),
                SizedBox(width: width/40),
              Container(width: 0.2,color: Colors.white,height: 20,),
            SizedBox(width: width/40),
                Icon(Icons.call, color: Colors.white),
                SizedBox(width: 10),
                Text('+91-9826092380',style: TextStyle(
                  fontFamily: 'Baloo',
                  color: Colors.white
                ),)
              ],
            ),
          ),
          Stack(
            children: [
              Image(image: AssetImage('assets/pngfuel1.com.png'),
                width: width,
                height: height/2.6,
              fit: BoxFit.fill,),
              Padding(
                padding:  EdgeInsets.only(left: width/1.7, top: height/50, ),
                child: Material(
                  color: Colors.transparent,
                  borderRadius: BorderRadius.circular(40),
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
                      selectedIndex: _selectedindex,
                      onTabChange: (index) {
                        setState(() {
                          _selectedindex = index;
                        });
                      }

                  ),
                ),
              ),
              Center(
                child: Padding(
                  padding:  EdgeInsets.only(top: height/9),
                  child: Text(
                    'Shatayu Ayurved Pacnhakarma'
                        '\n'
                        'Superspeciality Clinic',
                    style: TextStyle(
                      fontFamily: 'Oswald',
                      fontWeight: FontWeight.w600,
                      fontSize: 30,
                      color: Color.fromRGBO(1, 60, 30, 1),
                    ),
                  ),
                ),
              ),
              Padding(
                padding:  EdgeInsets.only(left: width/10, top: height/6),
                child: Text(
                  'Panchakarma Services',
                  style: TextStyle(
                    fontFamily: 'Oswald',
                    fontWeight: FontWeight.w600,
                    fontSize: 30,
                    color: Color.fromRGBO(1, 60, 30, 1),
                  ),
                ),
              ),
            ],
          ),


        ],
      ),
    );
  }
}
