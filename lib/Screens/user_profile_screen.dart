import 'package:flutter/material.dart';

class UserProfileScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final _mediaQueryData = MediaQuery.of(context);
    final _width = _mediaQueryData.size.width;
    final _height = _mediaQueryData.size.height;

    return Scaffold(
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.symmetric(
                  horizontal: _width * 0.06, vertical: _height * 0.005),
//        color: Colors.amber,
              height: _height * 0.15,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Total Balance',
                        style: TextStyle(fontSize: 18),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        'Rs 0.0',
                        style: TextStyle(
                            fontSize: 23, fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                  FlatButton(
                    onPressed: () {},
                    color: Theme.of(context).primaryColor,
                    child: Text(
                      'Setup Now',
                      style: TextStyle(color: Colors.white, fontSize: 18),
                    ),
                    shape: new RoundedRectangleBorder(
                      borderRadius: new BorderRadius.circular(20),
                    ),
                  )
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: _width * 0.06),
              child: Divider(
                height: _height * 0.02,
                thickness: 2,
              ),
            ),
            _userProfileWidget(
                _height,
                _width,
                1,
                'Payouts',
                'View Transaction History',
                'Add Withdrawal Method',
                Icons.access_time,
                Icons.attach_money),
            _userProfileWidget(
                _height,
                _width,
                2,
                'Help and Support',
                'Community Guidelines',
                'Get Help',
                Icons.library_books_outlined,
                Icons.help_outline),
            _userProfileWidget(
                _height,
                _width,
                1,
                'Privacy',
                'Terms and Conditions',
                'Privacy Policy',
                Icons.description_outlined,
                Icons.admin_panel_settings_outlined),
          ],
        ),
      ),
    );
  }

  Widget _userProfileWidget(double height, double width, int i, String title,
      String h1, String h2, IconData i1, IconData i2) {
    return Container(
      padding: EdgeInsets.symmetric(
          vertical: i == 2 ? height * 0.01 : height * 0.05,
          horizontal: width * 0.06),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: TextStyle(fontSize: 23, fontWeight: FontWeight.bold),
          ),
          SizedBox(
            height: height * 0.04,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                h1,
                style: TextStyle(fontSize: 18),
              ),
              Icon(i1),
            ],
          ),
          SizedBox(
            height: height * 0.025,
          ),
          Divider(
            height: height * 0.005,
            thickness: 2,
          ),
          SizedBox(
            height: height * 0.04,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                h2,
                style: TextStyle(fontSize: 18),
              ),
              Icon(i2),
            ],
          ),
          SizedBox(
            height: height * 0.025,
          ),
          Divider(
            height: height * 0.005,
            thickness: 2,
          ),
          title == 'Privacy'
              ? Column(
                  children: [
                    SizedBox(
                      height: height * 0.04,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Log Out',
                          style: TextStyle(fontSize: 18),
                        ),
                        Icon(Icons.logout),
                      ],
                    ),
                    SizedBox(
                      height: height * 0.025,
                    ),
                    Divider(
                      height: height * 0.005,
                      thickness: 2,
                    ),
                    SizedBox(
                      height: height * 0.04,
                    ),
                    Opacity(
                      opacity: 0.2,
                      child: Text(
                        'Version 3.1.0(v36)',
                        style: TextStyle(fontSize: 18),
                      ),
                    ),
                  ],
                )
              : Text('')
        ],
      ),
    );
  }
}
