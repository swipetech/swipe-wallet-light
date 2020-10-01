import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter_svg/svg.dart';
import 'package:swipe_app/app/modules/register/pages/successfully_created/successfully_created_controller.dart';
import 'package:swipe_app/app/shared/widgets/swp_button_full/swp_button_full_widget.dart';
import 'package:swipe_app/generated/i18n.dart';

class SuccessfullyCreatedPage extends StatefulWidget {
  final String title;
  const SuccessfullyCreatedPage({Key key, this.title = "SuccessfullyCreated"})
      : super(key: key);

  @override
  _SuccessfullyCreatedPageState createState() =>
      _SuccessfullyCreatedPageState();
}

class _SuccessfullyCreatedPageState extends ModularState<
    SuccessfullyCreatedPage, SuccessfullyCreatedController> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Material(
        child: Container(
          margin: const EdgeInsets.all(16),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              SvgPicture.asset(
                'assets/img/successfully_created.svg',
                // height: 400,
              ),
              SwpButtonFullWidget(
                  text: I18n.of(context).ok, onPressed: controller.ok)
            ],
          ),
        ),
      ),
    );
  }
}
