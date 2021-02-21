import 'package:campaigns_app/Screens/campaigns_screen.dart';
import 'package:campaigns_app/Screens/elephant_screen.dart';
import 'package:campaigns_app/Screens/notifications_screen.dart';
import 'package:campaigns_app/Screens/polls_screen.dart';
import 'package:campaigns_app/Screens/user_profile_screen.dart';
import 'package:custom_bottom_navigation_bar/custom_bottom_navigation_bar_item.dart';
import 'package:flutter/material.dart';

import 'package:custom_bottom_navigation_bar/custom_bottom_navigation_bar.dart';

class TabsScreen extends StatefulWidget {
  @override
  _TabsScreenState createState() => _TabsScreenState();

  void getMainMethod() {}
}

class _TabsScreenState extends State<TabsScreen> {
  final List<Widget> _screenList = [
    CampaignsScreen(),
    PollsScreen(),
    ElephantScreen(),
    NotificationsScreen(),
    UserProfileScreen()
  ];

  final List<String> _appBarTitles = [
    'Campaigns',
    'Polls',
    'Everiposts',
    'Notifications',
    ''
  ];
  int _selectedScreenIndex = 0;

  @override
  void initState() {}

  void backToMainTab() {}

  void _selectPage(int index) {
    setState(() {
      _selectedScreenIndex = index;
    });
  }

  LinearGradient _returnGradient() {
    return LinearGradient(
      begin: Alignment.topRight,
      end: Alignment.bottomLeft,
      colors: <Color>[
        Color.fromRGBO(22, 225, 171, 0.5),
        Color.fromRGBO(18, 62, 50, 0.5),
      ],
    );
  }

  AppBar _giveAppBar(int index) {
    if (index == 4) {
      return AppBar(
        flexibleSpace: Container(
          decoration: BoxDecoration(gradient: _returnGradient()),
        ),
        leadingWidth: 100,
        toolbarHeight: 116,
        leading: Container(
          padding: EdgeInsets.only(left: 18),
          child: CircleAvatar(
            backgroundColor: Colors.white,
            radius: 40,
          ),
        ),
        title: Container(
            child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Rajat Gupta',
              style: TextStyle(fontSize: 28),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              'View and Edit Profile',
              style: TextStyle(fontSize: 18),
            ),
          ],
        )),
        actions: [
          IconButton(
              icon: Icon(
                Icons.arrow_forward,
                size: 30,
                color: Colors.white,
              ),
              onPressed: null)
        ],
      );
    } else if (index == 0) {
      return AppBar(
        title: Text(
          _appBarTitles[index],
          style: TextStyle(fontSize: 23),
        ),
        flexibleSpace: Container(
          decoration: BoxDecoration(gradient: _returnGradient()),
        ),
        actions: [
          IconButton(
              icon: Icon(
                Icons.search,
                color: Colors.white,
                size: 28,
              ),
              onPressed: null),
          IconButton(
              icon: Icon(
                Icons.filter_alt_outlined,
                color: Colors.white,
                size: 28,
              ),
              onPressed: null),
        ],
      );
    } else
      return AppBar(
        flexibleSpace: Container(
          decoration: BoxDecoration(gradient: _returnGradient()),
        ),
        title: Text(
          _appBarTitles[index],
          style: TextStyle(fontSize: 23),
        ),
      );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _giveAppBar(_selectedScreenIndex),
      body: _screenList[_selectedScreenIndex],
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.shifting,
        iconSize: 27,
        unselectedItemColor: Colors.black54,
        selectedItemColor: Theme.of(context).primaryColor,
        onTap: _selectPage,
        currentIndex: _selectedScreenIndex,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            title: Text('Categories'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.equalizer),
            title: Text('Polls'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.airplay),
            title: Text(''),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.notifications),
            title: Text('Notifications'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            title: Text('Me'),
          ),
        ],
      ),
    );
  }
}
