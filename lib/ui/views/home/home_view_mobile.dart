
/* Contains the widget that will be used for Mobile widget of home,
potrait and landscape
 */
import 'package:flutter/material.dart';
import 'package:shatayu/responsive/sizing_information.dart';

class HomeMobilePotrait extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(SizingInformation().toString()),
        leading: Icon(Icons.add_comment),
      ),
    );
  }
}
class HomeMobileLandscape extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('yo'),
      ),
    );
  }
}
