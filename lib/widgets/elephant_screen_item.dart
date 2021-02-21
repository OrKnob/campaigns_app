import 'package:flutter/material.dart';

class ElephantScreenItem extends StatelessWidget {
  final _width;
  final _height;

  ElephantScreenItem(this._width, this._height);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: Colors.black26,
              blurRadius: 3.0,
              spreadRadius: 2.0,
            ),
          ]),
      margin: EdgeInsets.symmetric(vertical: 20, horizontal: 10),
      padding: EdgeInsets.symmetric(vertical: 15, horizontal: 15),
      height: _height * 0.27,
      child: Column(
        children: [
          Row(
            children: [
              Container(
                margin: EdgeInsets.only(left: 10, top: 10, right: 10),
                height: 80,
                width: 80,
                color: Colors.black26,
              ),
              Expanded(
                child: Container(
                  margin: EdgeInsets.only(left: 25),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        child: Text(
                          'No Everiposts to show',
                          style: TextStyle(fontSize: 20),
                        ),
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Container(
                        child: Text(
                            'Your campaign progress will show up here when you will join campaigns'),
                      )
                    ],
                  ),
                ),
              )
            ],
          ),
          GestureDetector(
            onTap: () {},
            child: Container(
              alignment: Alignment.center,
              width: _width * 0.7,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Theme.of(context).primaryColor,
              ),
              padding: EdgeInsets.symmetric(vertical: 10, horizontal: 15),
              margin: EdgeInsets.only(top: 20),
              child: Text(
                'View Campaigns',
                style: TextStyle(color: Colors.white),
              ),
            ),
          )
        ],
      ),
    );
  }
}
