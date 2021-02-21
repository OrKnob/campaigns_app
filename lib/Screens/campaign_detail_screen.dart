import 'package:campaigns_app/assets/Imported_Icons.dart';

import 'package:flutter/material.dart';

import '../constants.dart' as Constants;

class CampaignDetailScreen extends StatelessWidget {
  static const routeName = '/campaign-detail-screen';

  @override
  Widget build(BuildContext context) {
    final _width = MediaQuery.of(context).size.width;
    final _height = MediaQuery.of(context).size.height;

    Widget _cardTop(String heading, IconData iconData) {
      return Container(
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              heading,
              style: TextStyle(fontSize: Constants.readTextFontSize + 4),
            ),
            Icon(iconData),
          ],
        ),
        padding: EdgeInsets.only(left: 20, right: 20),
        margin: EdgeInsets.only(top: 25, left: 20, right: 20),
        height: _height * 0.08,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(20), topRight: Radius.circular(20)),
          color: Theme.of(context).primaryColor.withOpacity(0.3),
          boxShadow: [
            BoxShadow(
              offset: Offset(0, -1),
              color: Colors.black26,
              blurRadius: 3.0,
              spreadRadius: 2.0,
            ),
          ],
        ),
      );
    }

    Widget _cardBottom(Widget child) {
      return Container(
          height: _height * 0.70,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(20),
                bottomRight: Radius.circular(20)),
            color: Colors.white,
            boxShadow: [
              BoxShadow(
                offset: Offset(0, 5),
                color: Colors.black26,
                blurRadius: 3.0,
                spreadRadius: 2.0,
              ),
            ],
          ),
          margin: EdgeInsets.only(bottom: 25, left: 20, right: 20),
          child: child);
    }

    Widget _circularIconAndText(int n, String text) {
      return Column(
        children: [
          Container(
            padding: EdgeInsets.all(3),
            width: 65,
            height: 65,
            decoration: BoxDecoration(
                border: Border.all(color: Colors.black, width: 1.5),
                borderRadius: BorderRadius.circular(40),
                color: Colors.white),
            child: FittedBox(
              fit: BoxFit.contain,
              child: n == 1
                  ? Icon(MyFlutterApp.human_female_icon)
                  : Text(
                      '20-40',
                      style: TextStyle(fontSize: 5),
                    ),
            ),
          ),
          Container(
            padding: EdgeInsets.only(top: 5),
            width: 80,
            child: Text(
              text,
              textAlign: TextAlign.center,
            ),
          ),
        ],
      );
    }

    Widget _textContainer(int n, String text) {
      return Container(
        alignment: Alignment.centerLeft,
        padding: EdgeInsets.only(left: 20, right: 20, top: n == 1 ? 0 : 4),
        child: Text(
          text,
          textAlign: TextAlign.justify,
        ),
      );
    }

    return Scaffold(
        body: SafeArea(
      child: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Column(
          children: [
            Container(
              child: Stack(
                children: [
                  ClipRRect(
                    child: Image.network(
                      'https://i.stack.imgur.com/y9DpT.jpg',
                      height: _height * 0.35,
                      width: double.infinity,
                      fit: BoxFit.cover,
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      IconButton(
                          icon: Icon(Icons.arrow_back_ios),
                          onPressed: () => Navigator.of(context).pop()),
                      IconButton(icon: Icon(Icons.share), onPressed: () {}),
                    ],
                  )
                ],
              ),
            ),
            Container(
              child: Column(
                children: [
                  Container(
                    margin: EdgeInsets.only(top: 10, left: 10, right: 10),
                    padding: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          child: Text(
                            '[INTEREST] Hydrate & Protect your skin with Cruel\'s Moisture Face Care Routine!',
                            style: TextStyle(
                                fontSize: Constants.campaignDetailHeading),
                          ),
                          width: _width * 0.6,
                        ),
                        Container(
                          color: Colors.black,
                          width: 70,
                          height: 70,
                        )
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 0, left: 10, right: 10),
                    padding: EdgeInsets.symmetric(vertical: 0, horizontal: 10),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          child: Text(
                            'Food',
                            style:
                                TextStyle(fontSize: Constants.readTextFontSize),
                          ),
                          width: _width * 0.13,
                        ),
                        FlatButton(
                          color: Theme.of(context).primaryColor,
                          onPressed: () {},
                          child: Text(
                            'Subscription Open',
                            style: TextStyle(color: Colors.white),
                          ),
                          shape: new RoundedRectangleBorder(
                            borderRadius: new BorderRadius.circular(20),
                          ),
                        )
                      ],
                    ),
                  ),
                  Container(
                    alignment: Alignment.centerLeft,
                    margin: EdgeInsets.only(top: 5, left: 10, right: 10),
                    padding: EdgeInsets.symmetric(vertical: 0, horizontal: 10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Earn Up To',
                          style:
                              TextStyle(fontSize: Constants.readTextFontSize),
                        ),
                        Text(
                          'INR 130',
                          style: Constants.priceStyle,
                        ),
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 7, left: 10, right: 10),
                    padding: EdgeInsets.symmetric(vertical: 0, horizontal: 10),
                    child: Text(
                      'We are looking for Everiposters to showcase the effectiveness of using Curel\'s Moisture Face Care routine!',
                      style: TextStyle(fontSize: Constants.readTextFontSize),
                    ),
                  ),
                  _cardTop('Requirements', Icons.view_headline),
                  _cardBottom(
                    Column(
                      children: [
                        Container(
                          padding: EdgeInsets.only(
                              top: 10, bottom: 10, left: 6, right: 6),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              _circularIconAndText(2, '20 - 40 years old only'),
                              SizedBox(
                                width: 15,
                              ),
                              _circularIconAndText(1, 'Female Only'),
                            ],
                          ),
                        ),
                        _textContainer(1,
                            'Preferred Profile Type : Everyday people profile, Beauty related profile, those with dry/sensitive skin'),
                        _textContainer(2, 'Minimum number of followers : 1000'),
                        _textContainer(2,
                            '  -  Those with minimum average likes of 100 will be prioritized'),
                        _textContainer(2,
                            '  -  Profile should not have posts that are too revealing or showing too much skin'),
                        _textContainer(2, 'Public accounts only'),
                        SizedBox(
                          height: 20,
                        ),
                        Container(
                          height: _height * 0.24,
                          child: ListView.builder(
                            physics: NeverScrollableScrollPhysics(),
                            itemBuilder: (context, i) => _textContainer(1,
                                'Note that posts will only be approved during March - April and you are to only post during these 2 months'),
                            itemCount: 3,
                          ),
                        )
                      ],
                    ),
                  ),
                  _cardTop('Tasks', Icons.folder_open),
                  _cardBottom(Container()),
                ],
              ),
            ),
          ],
        ),
      ),
    ));
  }
}
