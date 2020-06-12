import 'package:flutter/material.dart';
import 'package:shatayu/responsive/oreintation_layout.dart';
import 'package:shatayu/responsive/responsive_builder.dart';
import 'package:shatayu/responsive/screen_type_layout.dart';

import 'home_view_laptop.dart';
import 'home_view_mobile.dart';



class HomeView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout(
      mobile: OrientationLayout(
          portrait: HomeMobilePotrait(),
      landscape: HomeMobileLandscape(),),
      desktop: HomeViewLaptop(),


    );
  }
}


