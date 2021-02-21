import 'package:campaigns_app/Screens/campaign_detail_screen.dart';

import 'Screens/tabs_screen.dart';
import 'constants.dart' as Constant;

import 'Screens/campaigns_screen.dart';
import 'Screens/polls_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Constant.primary,
        accentColor: Color.fromRGBO(20, 108, 10, 1),
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: TabsScreen(),
      routes: {CampaignDetailScreen.routeName: (ctx) => CampaignDetailScreen()},
    );
  }
}
