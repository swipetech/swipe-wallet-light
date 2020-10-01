import 'package:flutter/material.dart';
import 'package:swipe_app/app/shared/themes/swp_theme.dart';

class SwpButtonLinkWidget extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;

  SwpButtonLinkWidget({@required this.text, @required this.onPressed});
  @override
  Widget build(BuildContext context) {
    return FlatButton(
        onPressed: onPressed,
        child: new Text(text,
            style: new TextStyle(
              fontSize: 12,
              color: SwpColors.link,
            )));
  }
}
