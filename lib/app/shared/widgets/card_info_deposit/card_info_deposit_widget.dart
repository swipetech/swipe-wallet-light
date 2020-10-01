import 'package:flutter/material.dart';
import 'package:swipe_app/app/shared/themes/swp_theme.dart';

class CardInfoDepositWidget extends StatelessWidget {
  final String title;
  final int step;

  CardInfoDepositWidget({@required this.title, @required this.step});
  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListTile(
          leading: Container(
            padding: const EdgeInsets.all(10),
            decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(color: SwpColors.darkBlue, width: 2)),
            child: Text(
              step.toString(),
              style: TextStyle(
                  color: SwpColors.darkBlue,
                  fontWeight: FontWeight.normal,
                  fontSize: 28),
            ),
          ),
          title: Text(title,
              style: TextStyle(
                  color: SwpColors.grey, fontWeight: FontWeight.bold)),
        ),
      ),
    );
  }
}
