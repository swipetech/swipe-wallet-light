import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:swipe_app/app/shared/themes/swp_theme.dart';

class SwpTextInputWidget extends StatelessWidget {
  final IconData prefixIcon;
  final String prefixText;
  final IconData suffixIcon;
  final VoidCallback onSuffixIconPressed;
  final bool obscureText;
  final String text;
  final bool autoFocus;
  final TextInputType keyboardType;
  final VoidCallback onTap;
  final FormFieldValidator<String> validator;
  final FormFieldSetter<String> onSaved;
  final ValueChanged<String> onChanged;
  final TextCapitalization textCapitalization;
  final String errorText;
  final bool isOutlineBorder;
  final bool readOnly;
  final List<TextInputFormatter> inputFormater;
  final TextEditingController controller;
  final String hintText;
  final int maxLength;

  SwpTextInputWidget(
      {this.prefixIcon,
      this.prefixText,
      this.suffixIcon,
      this.onSuffixIconPressed,
      this.obscureText = false,
      this.text,
      this.hintText = '',
      this.onTap,
      this.errorText,
      this.autoFocus = false,
      this.keyboardType,
      this.validator,
      this.onSaved,
      this.readOnly = false,
      this.inputFormater,
      this.textCapitalization = TextCapitalization.none,
      this.isOutlineBorder = true,
      this.controller,
      this.maxLength,
      this.onChanged});

  @override
  Widget build(BuildContext context) {
    final border = isOutlineBorder
        ? OutlineInputBorder(
            borderSide: BorderSide(color: Theme.of(context).dividerColor, width: 2.0),
            borderRadius: BorderRadius.all(Radius.circular(10.0)),
          )
        : UnderlineInputBorder(borderSide: BorderSide(color: Theme.of(context).dividerColor, width: 2.0));
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Container(
          margin: const EdgeInsets.only(top: 16),
          child: Text(
            text,
            style: TextStyle(
              fontFamily: 'Nunito',
              fontSize: 12,
              color: SwpColors.grey,
            ),
          ),
        ),
        TextFormField(
          controller: controller,
          maxLines: 1,
          maxLength: maxLength,
          maxLengthEnforced: maxLength != null,
//          maxLengthEnforced: false,
          autofocus: autoFocus,
          obscureText: obscureText,
          keyboardType: keyboardType,
          readOnly: readOnly,
          inputFormatters: inputFormater,
          textCapitalization: textCapitalization,
          onTap: onTap,
          decoration: new InputDecoration(
              focusedBorder: border,
              enabledBorder: border,
              disabledBorder: border,
              border: border,
              hintText: hintText,
              counterText: "",
              errorBorder: border,
              prefixText: prefixText,
              prefixStyle: TextStyle(color: Colors.black, fontWeight: FontWeight.normal, fontSize: 16),
              prefixIcon: prefixIcon != null
                  ? new Icon(
                      prefixIcon,
                      color: Theme.of(context).accentColor,
                    )
                  : null,
              suffixIcon: suffixIcon != null
                  ? new IconButton(
                      color: Theme.of(context).accentColor,
                      icon: new Icon(suffixIcon),
                      onPressed: onSuffixIconPressed,
                    )
                  : null,
              errorText: this.errorText),
          validator: validator,
          onSaved: onSaved,
          onChanged: onChanged,
        ),
      ],
    );
  }
}
