import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

class LoadingWidget extends StatelessWidget {
  Color color;

  LoadingWidget({Key key, this.color});

  @override
  Widget build(BuildContext context) {
    return Container(
//      margin: const EdgeInsets.all(30),
      child: SpinKitThreeBounce(
        color: color ?? Theme.of(context).primaryColor,
        size: 20,
      ),
    );
  }
}
