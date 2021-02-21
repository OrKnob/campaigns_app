import 'package:campaigns_app/Screens/campaign_detail_screen.dart';
import 'package:flutter/material.dart';

class CampaignItem extends StatelessWidget {
  final String _detail;
  final String _title;
  final bool _isSubscriptionOpen;
  final String _category;
  final int _earning;

  CampaignItem(this._detail, this._title, this._isSubscriptionOpen,
      this._category, this._earning);

  void _openCampaignDetail(BuildContext context) {
    Navigator.of(context).pushNamed(CampaignDetailScreen.routeName);
  }

  @override
  Widget build(BuildContext context) {
    final mediaQuery = MediaQuery.of(context);

    return Container(
      child: Card(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
        elevation: 4,
        margin: EdgeInsets.all(10),
        child: Column(
          children: <Widget>[
            ClipRRect(
              borderRadius: BorderRadius.only(
                topLeft: const Radius.circular(15),
                topRight: const Radius.circular(15),
              ),
              child: Image.network(
                'https://i.stack.imgur.com/y9DpT.jpg',
                height: mediaQuery.size.height * 0.35,
                width: double.infinity,
                fit: BoxFit.cover,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                  top: 12.0, bottom: 5.0, left: 12.0, right: 12.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  SizedBox(
                    width: 90,
                  ),
                  Flexible(
                    fit: FlexFit.tight,
                    child: GestureDetector(
                      onTap: () => _openCampaignDetail(context),
                      child: Container(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              _detail,
                              overflow: TextOverflow.ellipsis,
                            ),
                            SizedBox(
                              height: 2,
                            ),
                            Text(_title),
                            SizedBox(
                              height: 2,
                            ),
                            Text(_category),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 2,
            ),
            Padding(
              padding:
                  const EdgeInsets.only(left: 12.0, right: 12.0, bottom: 5.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Earn Up To',
                        style: TextStyle(fontSize: 10),
                      ),
                      Text(
                        'INR ' + _earning.toString(),
                        style: TextStyle(
                            fontSize: 22, fontWeight: FontWeight.bold),
                      ),
                    ],
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
          ],
        ),
      ),
    );
  }
}
