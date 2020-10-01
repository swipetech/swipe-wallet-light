import 'package:flutter/material.dart';
import 'package:swipe_app/app/shared/themes/swp_theme.dart';

class ItemInfoDepositWidget extends StatelessWidget {

  final String title;
  final String value;

  ItemInfoDepositWidget({@required this.title, @required this.value});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(title, style: TextStyle(fontSize: 12)),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
          child: Text(
            value,
            style: TextStyle(color: SwpColors.darkBlue),
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8.0),
          child: Divider(
            height: 10,
            color: SwpColors.grey,
          ),
        )
      ],
    );
  }
}
