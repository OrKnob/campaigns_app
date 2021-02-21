import 'package:flutter/material.dart';

class ProfileCompletionWidget extends StatelessWidget {
  final _width;
  final _height;

  ProfileCompletionWidget(this._width, this._height);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 15, horizontal: 15),
      padding: EdgeInsets.symmetric(vertical: 15, horizontal: 12),
      height: _height * 0.84,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Theme.of(context).accentColor,
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
            child: Text(
              'Complete Your Profile',
              style: TextStyle(color: Colors.white),
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 10),
            child: Text(
              'What are your interests? This info helps us match you to more campaigns!',
              style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.white),
            ),
          ),
          Expanded(
            child: ListView.builder(
              physics: NeverScrollableScrollPhysics(),
              itemBuilder: (context, index) => Center(
                child: Container(
                  alignment: Alignment.center,
                  width: _width * 0.8,
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.white, width: 2),
                    borderRadius: BorderRadius.circular(10),
                    color: Theme.of(context).accentColor,
                  ),
                  padding: EdgeInsets.symmetric(vertical: 10, horizontal: 15),
                  margin: EdgeInsets.only(top: 10),
                  child: Text(
                    'Technology & Apps',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),
              itemCount: 8,
            ),
          ),
          Center(
            child: Container(
              alignment: Alignment.center,
              width: _width * 0.8,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Theme.of(context).primaryColor,
              ),
              padding: EdgeInsets.symmetric(vertical: 15, horizontal: 15),
              margin: EdgeInsets.only(top: 10, bottom: 8),
              child: Text(
                'Submit Answer',
                style: TextStyle(color: Colors.white),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
