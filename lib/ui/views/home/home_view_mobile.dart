/* Contains the widget that will be used for Mobile widget of home,
portrait and landscape
 */
import 'package:carousel_slider/carousel_slider.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';

import 'package:scrollable_positioned_list/scrollable_positioned_list.dart';
import 'package:shatayu/ui/views/contact_us/contact_us_mobile.dart';
import 'package:shatayu/ui/views/home/home_widgets/cir.dart';
import 'package:shatayu/ui/views/panchakarma/panchakarma_mobile.dart';
import 'package:shatayu/ui/views/treatement/treatement_mobile.dart';
import 'package:shatayu/widgets/mobile_header.dart';
import 'package:shatayu/widgets/sticky_nav_bar.dart';
import 'home_widgets/bottom_home.dart';
import 'home_widgets/home_about.dart';

class HomeMobilePortrait extends StatefulWidget {
  @override
  _HomeMobilePortraitState createState() => _HomeMobilePortraitState();
}

class _HomeMobilePortraitState extends State<HomeMobilePortrait> {

  CurvedNavigationBarState navBarState;

  final ItemScrollController itemScrollController = ItemScrollController();
  final ItemPositionsListener itemPositionsListener =
      ItemPositionsListener.create();

  bool _stick = false;

  StickyNavBar _navBar;
  int _navIndex = 0;

  Widget _home(double height, double width) {
    return Column(
      children: [
        CarouselSlider(
            items: buildCarasoulList(50),
            options: CarouselOptions(
              height: height / 4,
              aspectRatio: 16 / 9,
              viewportFraction: .35,
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
            )),
        HomeAbout(true, height: height, width: width),
        SizedBox(
          height: height / 20,
        ),
        BottomHome(true, height: height, width: width),
      ],
    );
  }

  void _navOnTap(int index) {
    setState(() {
      _navIndex = index;
    });
    itemScrollController.scrollTo(
        index: index == 0 ? 0 : index + 2,
        duration: Duration(seconds: 2),
        curve: Curves.easeInOutCubic);
  }

  @override
  void initState() {
    _navBar = StickyNavBar(onTap: (int index) => _navOnTap(index));
    itemPositionsListener.itemPositions.addListener(() {
      if (itemPositionsListener.itemPositions.value.length > 0) {
        var element = itemPositionsListener.itemPositions.value
            .where((element) => element.index == 1);
        if (element.isNotEmpty) {
          if (element.elementAt(0).itemLeadingEdge < 0 && !_stick) {
            setState(() => _stick = true);
          } else if (element.elementAt(0).itemLeadingEdge >= 0 && _stick) {
            setState(() => _stick = false);
          }
        }
      }
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    var media = MediaQuery.of(context);
    double height = media.size.height;
    double width = media.size.width;

    List<Widget> _widgets = [
      MobileHeader(),
      _navBar,
      _home(height, width),
      //Diseases Page
      TreatementMobile(width: width, height: height),
      //Panchakarma Page
      PanchakarmaMobile(width: width, height: height),
      //Contact Us/Reach Us Page
      ContactUsMobile(width: width, height: height)
    ];

    return SafeArea(
      child: Scaffold(
        body: Scrollbar(
          child: Stack(
            children: [
              ScrollablePositionedList.builder(
                itemCount: _widgets.length,
                itemBuilder: (context, index) {
                  return _widgets[index];
                },
                itemScrollController: itemScrollController,
                itemPositionsListener: itemPositionsListener,
              ),
              _stick
                  ? StickyNavBar(
                      onTap: (int index) => _navOnTap(index),
                      index: _navIndex,
                    )
                  : Container(),
            ],
          ),
        ),
      ),
    );
  }
}
