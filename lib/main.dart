import 'package:flutter/material.dart';
import 'services/service_locator.dart';
import 'ui/views/home/home_view.dart';

void main() {
  setupLocator();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      /*theme: ThemeData(
        visualDensity: VisualDensity.adaptivePlatformDenfluttsity,
      ),*/
      home: HomeView(),
    );
  }
}


