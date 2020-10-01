import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:swipe_app/app/shared/themes/swp_theme.dart';
import 'package:swipe_app/app/shared/widgets/swp_button_full/swp_button_full_widget.dart';
import 'package:swipe_app/app/shared/widgets/swp_button_full_outline/swp_button_full_outline_widget.dart';

class SwpAlertWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      content: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Container(
            margin: const EdgeInsets.symmetric(vertical: 16),
            child: Text(
              "Deseja emitir o boleto de depósito?",
              style: TextStyle(
                  color: SwpColors.grey,
                  fontWeight: FontWeight.bold,
                  fontSize: 20),
              textAlign: TextAlign.center,
            ),
          ),
          Flexible(
            child: Row(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Container(
                  margin: const EdgeInsets.all(8),
                  width: 120,
                  // height: 40,
                  child: SwpButtonFullWidget(
                    text: "Não",
                    isFilled: false,
                    onPressed: () => Modular.to.pop(false),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.all(8),
                  width: 120,
                  // height: 60,
                  child: SwpButtonFullOutlineWidget(
                    text: "Sim",
                    onPressed: () => Modular.to.pop(true),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
