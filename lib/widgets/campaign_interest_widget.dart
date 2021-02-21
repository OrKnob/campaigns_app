import 'package:flutter/material.dart';

class CampaignInterestWidget extends StatelessWidget {
  final _width;
  final _height;

  CampaignInterestWidget(this._width, this._height);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 15, horizontal: 15),
      padding: EdgeInsets.symmetric(vertical: 15, horizontal: 12),
      height: _height * 0.335,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.black26,
            blurRadius: 4.0,
            spreadRadius: 4.0,
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            child: Text('CAMPAIGN INTEREST'),
          ),
          Container(
            margin: EdgeInsets.only(top: 10),
            child: Row(
              children: [
                Icon(Icons.description),
                SizedBox(
                  width: 10,
                ),
                Text('Everipost'),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 10),
            child: Text(
              'Share what motivates you to join a social media competition among influencers!',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
          ),
          Center(
            child: Container(
              alignment: Alignment.center,
              width: _width * 0.7,
              decoration: BoxDecoration(
                border: Border.all(color: Colors.black, width: 2),
                borderRadius: BorderRadius.circular(10),
                color: Colors.white,
              ),
              padding: EdgeInsets.symmetric(vertical: 10, horizontal: 15),
              margin: EdgeInsets.only(top: 20),
              child: Text(
                'Find Out More',
                style: TextStyle(color: Colors.black),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
