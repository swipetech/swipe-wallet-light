import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:swipe_app/app/shared/themes/swp_theme.dart';

class CardOptionDepositWidget extends StatelessWidget {
  final String title;
  final String subtitle;
  final VoidCallback onPressed;

  CardOptionDepositWidget(
      {@required this.title, @required this.subtitle, this.onPressed})
      : assert(title != null && subtitle != null);
  @override
  Widget build(BuildContext context) {
    return Material(
      child: InkWell(
        onTap: this.onPressed,
        child: Card(
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
          child: Container(
            padding: const EdgeInsets.all(16),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Flexible(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          title,
                          textAlign: TextAlign.start,
                          style: TextStyle(
                              color: SwpColors.darkBlue, fontSize: 18),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(this.subtitle),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: SvgPicture.asset(
                    'assets/icons/icon_card_deposit.svg',
                    height: 65,
                    width: 106,
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
