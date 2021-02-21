import 'package:flutter/material.dart';
import 'package:timelines/timelines.dart';

class TimelineItem extends StatelessWidget {
  final String _content;

  TimelineItem(this._content);

  @override
  Widget build(BuildContext context) {
    return TimelineTile(
      contents: Container(
        height: 85,
        child: Container(
          alignment: Alignment.centerLeft,
          padding: EdgeInsets.only(left: 15),
          child: Text(
            _content,
            style: TextStyle(fontSize: 20),
          ),
        ),
      ),
      nodeAlign: TimelineNodeAlign.start,
      node: TimelineNode(
        indicator: ContainerIndicator(
          child: Icon(
            Icons.location_on_outlined,
            size: 30,
            color: Theme.of(context).primaryColor,
          ),
        ),
        startConnector: DashedLineConnector(
          color: Theme.of(context).primaryColor,
        ),
        endConnector: DashedLineConnector(
          color: Theme.of(context).primaryColor,
        ),
      ),
    );
  }
}
