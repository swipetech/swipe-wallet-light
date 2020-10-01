import 'package:flutter/material.dart';

class SwpButtonFlatWidget extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;

  SwpButtonFlatWidget({@required this.text, @required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return FlatButton(
      onPressed: onPressed,
      child: Text(text,
          style: new TextStyle(
            fontSize: 16.0,
            fontWeight: FontWeight.bold,
            color: Theme.of(context).primaryColor,
          )),
    );
  }
}
