import 'package:flutter/material.dart';
import 'package:swipe_app/app/shared/themes/swp_theme.dart';

class SwpButtonFullWidget extends StatelessWidget {
  final String text;
  final Widget child;
  final bool isFilled;
  final VoidCallback onPressed;
  final double opacityBorder;
  Color textColor;
  Color borderColor;
  final bool isEnabled;
  final Widget prefixIcon;

  SwpButtonFullWidget(
      {@required this.text,
      @required this.onPressed,
      this.child,
      this.isFilled = true,
      this.isEnabled = true,
      this.borderColor,
      this.prefixIcon,
      this.opacityBorder = 1,
      this.textColor});

  @override
  Widget build(BuildContext context) {
    if (this.borderColor == null) {
      borderColor = Colors.grey[300];
    }
    if (this.textColor == null) {
      textColor = Theme.of(context).primaryColor;
    }
    return SizedBox(
      width: double.infinity,
      height: 50.0,
      child: Opacity(
        opacity: onPressed != null ? 1 : 0.5,
        child: new RaisedButton.icon(
          onPressed: isEnabled ? onPressed : null,
          elevation: !isFilled ? 0 : 5,
          shape: new RoundedRectangleBorder(
              borderRadius: new BorderRadius.circular(10.0),
              side: BorderSide(
                  color: isFilled
                      ? Colors.transparent
                      : borderColor.withOpacity(opacityBorder),
                  width: 2)),
          color: isFilled ? Theme.of(context).primaryColor : Colors.white,
          disabledColor: SwpColors.disableButton,
          label: child == null
              ? Text(text,
                  style: new TextStyle(
                    fontSize: 16.0,
                    color: !isFilled ? textColor : Colors.white,
                  ))
              : child,
          icon: prefixIcon != null
              ? prefixIcon
              : Container(),
        ),
      ),
    );
  }
}
