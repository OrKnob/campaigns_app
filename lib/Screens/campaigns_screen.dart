import 'package:flutter/material.dart';
import '../models/dummy_data.dart';
import '../widgets/campaign_item.dart';

class CampaignsScreen extends StatefulWidget {
  @override
  _CampaignsScreenState createState() => _CampaignsScreenState();
}

class _CampaignsScreenState extends State<CampaignsScreen> {
  Widget _giveCircularStories(double height, String text) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        CircleAvatar(
          backgroundColor: Theme.of(context).primaryColor,
          radius: 28,
        ),
        SizedBox(
          height: height * 0.003,
        ),
        Text(text)
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    final _height = MediaQuery.of(context).size.height;
    final _width = MediaQuery.of(context).size.width;

    return Scaffold(
        body: SingleChildScrollView(
      physics: BouncingScrollPhysics(),
      child: Container(
        child: Column(children: [
          Container(
            padding: EdgeInsets.only(left: 15, right: 15, top: 15, bottom: 5),
            child: FittedBox(
              alignment: Alignment.centerLeft,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  _giveCircularStories(_height, 'Invitations'),
                  SizedBox(
                    width: _width * 0.035,
                  ),
                  _giveCircularStories(_height, 'Upcoming')
                ],
              ),
            ),
            width: double.infinity,
            height: _height * 0.14,
          ),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Divider(
              thickness: 3,
            ),
          ),
          Container(
            height: 393 * (DUMMY_CAMPAIGNS.length.toDouble()),
            child: ListView.builder(
              physics: NeverScrollableScrollPhysics(),
              itemBuilder: (context, i) => CampaignItem(
                  DUMMY_CAMPAIGNS[i].detail,
                  DUMMY_CAMPAIGNS[i].title,
                  DUMMY_CAMPAIGNS[i].subscriptionOpen,
                  DUMMY_CAMPAIGNS[i].category,
                  DUMMY_CAMPAIGNS[i].earning),
              itemCount: DUMMY_CAMPAIGNS.length,
            ),
          ),
        ]),
      ),
    ));
  }
}
