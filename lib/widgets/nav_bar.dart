import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:shatayu/ui/views/home/home_view_laptop.dart';
import 'package:shatayu/ui/views/panchakarma/panchakarma_laptop.dart';
import 'package:shatayu/ui/views/treatement/treatement_laptop.dart';

class NavBar extends StatefulWidget {
  final double width;
  final double height;


  const NavBar({Key key, @required this.width, this.height}) : super(key: key);

  @override
  _NavBarState createState() => _NavBarState();
}

class _NavBarState extends State<NavBar> {
  static int _selectedindex = 0;
  List<dynamic> classes = [
    HomeViewLaptop(),
    PanchakarmaLaptop(),
    TreatementLaptop(),

  ];
  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(
          left: widget.width / 1.7,
          top: widget.height / 50,
        ),
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
                  )
                ],
                selectedIndex: _selectedindex,
                color: Colors.white,
                onTabChange: (index) {
                  if(index!=_selectedindex){
                    setState(() {
                      _selectedindex = index;
                    });
                    Navigator.of(context).push(MaterialPageRoute(builder: (BuildContext context)=>classes[_selectedindex]));
                  }


                })));
  }
}
