import 'package:flutter/material.dart';

class SwpButtonFullOutlineWidget extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;
  final bool isEnabled;

  SwpButtonFullOutlineWidget({
    @required this.text,
    @required this.onPressed,
    this.isEnabled = true,
  });
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 50.0,
      child: new RaisedButton(
        onPressed: isEnabled ? onPressed : null,
        elevation: 5.0,
        shape: new RoundedRectangleBorder(
            borderRadius: new BorderRadius.circular(10.0)),
        color: Theme.of(context).primaryColor,
        child: new Text(text,
            style: new TextStyle(
              fontSize: 16.0,
              color: Colors.white,
            )),
      ),
    );
  }
}
