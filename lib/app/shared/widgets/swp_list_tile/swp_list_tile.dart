import 'package:flutter/material.dart';
import 'package:swipe_app/app/shared/themes/swp_theme.dart';

class SwpListTileWidget extends StatelessWidget {
  final String title;
  final String value;
  final Widget valueWidget;
  final Color textColor;

  const SwpListTileWidget({
    Key key,
    @required this.title,
    this.value,
    this.valueWidget,
    this.textColor = Colors.black,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      contentPadding: const EdgeInsets.symmetric(horizontal: 16),
      title: Column(
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Text(
                title,
                style:
                    TextStyle(color: SwpColors.grey, fontWeight: FontWeight.bold),
              ),
              valueWidget == null
                  ? Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        value,
                        style: TextStyle(fontWeight: FontWeight.bold, color: textColor),
                        textAlign: TextAlign.left,
                      ),
                    )
                  : Flexible(child: valueWidget),
            ],
          ),
          Divider()
        ],
      ),
    );
  }
}
