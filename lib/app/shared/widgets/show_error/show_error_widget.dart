import 'package:flutter/material.dart';

class ShowErrorWidget extends SnackBar {
  final String text;

  ShowErrorWidget(this.text) : super(
    content: Text(text),
    backgroundColor: Colors.red
  );

}
