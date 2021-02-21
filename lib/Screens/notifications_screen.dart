import 'package:flutter/material.dart';

class NotificationsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final _width = MediaQuery.of(context).size.width;

    return Scaffold(
      body: Center(
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: _width * 0.02),
          child: Opacity(
            opacity: 0.2,
            child: Text(
              'Get notified when new campaigns go live. New opportunities to earn! View all notifications here.',
              style: TextStyle(fontSize: 25),
              textAlign: TextAlign.center,
            ),
          ),
        ),
      ),
    );
  }
}
