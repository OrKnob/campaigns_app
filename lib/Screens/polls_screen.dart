import '../widgets/profile_completion_widget.dart';

import '../widgets/campaign_interest_widget.dart';
import 'package:flutter/material.dart';

class PollsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final _height = MediaQuery.of(context).size.height;
    final _width = MediaQuery.of(context).size.width;

    final List<String> _requirementsList = [
      'Should be based out of Kolkata, Hyderabad, Mumbai, Chennai and Pune',
      'Should be based out of Kolkata, Hyderabad, Mumbai, Chennai and Pune',
      'Should be based out of Kolkata, Hyderabad, Mumbai, Chennai and Pune',
      'Should be based out of Kolkata, Hyderabad, Mumbai, Chennai and Pune',
      'Should be based out of Kolkata, Hyderabad, Mumbai, Chennai and Pune',
      'Should be based out of Kolkata, Hyderabad, Mumbai, Chennai and Pune'
    ];

    return SingleChildScrollView(
      physics: BouncingScrollPhysics(),
      child: Column(
        children: [
          CampaignInterestWidget(_width, _height),
          ProfileCompletionWidget(_width, _height),
          CampaignInterestWidget(_width, _height),
          ProfileCompletionWidget(_width, _height),
          CampaignInterestWidget(_width, _height),
        ],
      ),
    );
  }
}
