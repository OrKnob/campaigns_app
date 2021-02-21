import '../widgets/elephant_screen_item.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../Screens/tabs_screen.dart ' as Tabs;

class ElephantScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final _width = MediaQuery.of(context).size.width;
    final _height = MediaQuery.of(context).size.height;

    return Scaffold(body: ElephantScreenItem(_width, _height));
  }
}
