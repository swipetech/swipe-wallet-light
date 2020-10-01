import 'package:flutter/material.dart';
import 'package:swipe_app/app/shared/themes/swp_theme.dart';

class SwpTextWidget extends StatelessWidget {
  final String text;

  SwpTextWidget(this.text);

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerLeft,
      child: Text(
        text,
        style: TextStyle(
          fontSize: 12,
          fontStyle: FontStyle.italic,
          color: SwpColors.grey,
        ),
      ),
    );
  }
}
