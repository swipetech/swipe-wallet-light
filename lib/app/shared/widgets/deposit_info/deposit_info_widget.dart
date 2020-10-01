import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:swipe_app/app/shared/widgets/card_info_deposit/card_info_deposit_widget.dart';

class DepositInfoWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[
        SvgPicture.asset('assets/img/cash_in.svg', height: 200,),
        CardInfoDepositWidget(
          title: "Informe o valor que deseja fazer o depósito",
          step: 1,
        ),
        CardInfoDepositWidget(
          title: "Verifique a unidade mais próxima de você",
          step: 2,
        ),
        CardInfoDepositWidget(
          title:
              "Informe o nº do token e o nº do produto que será informado",
          step: 3,
        ),
        CardInfoDepositWidget(
          title: "Realize seu depósito",
          step: 4,
        ),
        // SwpButtonFullWidget(text: "Fazer depóstio", onPressed: null)
      ],
    );
  }
}
