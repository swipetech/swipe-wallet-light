import 'package:flutter/material.dart';

class SwpTextInputWidget extends StatelessWidget {
  final IconData prefixIcon;
  final IconData suffixIcon;
  final VoidCallback onSuffixIconPressed;
  final bool obscureText;
  final String hintText;
  final bool autoFocus;
  final TextInputType keyboardType;
  final VoidCallback onTap;
  final FormFieldValidator<String> validator;
  final FormFieldSetter<String> onSaved;
  final ValueChanged<String> onChanged;
  final String errorText;
  final bool isOutlineBorder;

  SwpTextInputWidget(
      {this.prefixIcon,
      this.suffixIcon,
      this.onSuffixIconPressed,
      this.obscureText = false,
      this.hintText,
      this.onTap,
      this.errorText,
      this.autoFocus = false,
      this.keyboardType,
      this.validator,
      this.onSaved,
      this.isOutlineBorder = true,
      this.onChanged});

  @override
  Widget build(BuildContext context) {
    final border = isOutlineBorder ? OutlineInputBorder(
            borderSide:
                BorderSide(color: Theme.of(context).dividerColor, width: 2.0),
            borderRadius: BorderRadius.all(Radius.circular(10.0)),
          ) : UnderlineInputBorder(
             borderSide:
                BorderSide(color: Theme.of(context).dividerColor, width: 2.0)
          );
    return TextFormField(
      maxLines: 1,
      autofocus: autoFocus,
      obscureText: obscureText,
      keyboardType: keyboardType,
      onTap: onTap,
      decoration: new InputDecoration(
          hintText: hintText,
          focusedBorder: border,
          enabledBorder: border,
          disabledBorder: border,
          border: border,
          errorBorder: border,
          prefixIcon: prefixIcon != null ? new Icon(
            prefixIcon,
            color: Theme.of(context).accentColor,
          ) : null,
          suffixIcon: suffixIcon != null ? new IconButton(
            color: Theme.of(context).accentColor,
            icon: new Icon(suffixIcon),
            onPressed: onSuffixIconPressed,
          ) : null,
          errorText: this.errorText),
      validator: validator,
      onSaved: onSaved,
      onChanged: onChanged,
    );
  }
}
