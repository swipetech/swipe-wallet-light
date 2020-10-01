import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:swipe_app/app/modules/register/register_controller.dart';
import 'package:swipe_app/app/shared/widgets/loading/loading_widget.dart';
import 'package:swipe_app/app/shared/widgets/swp_button_full/swp_button_full_widget.dart';
import 'package:swipe_app/app/shared/widgets/swp_text_input_no_hint/swp_text_input_no_hint_widget.dart';
import 'package:swipe_app/generated/i18n.dart';

class RegisterPage extends StatefulWidget {
  final String title;
  const RegisterPage({Key key, this.title = "Register"}) : super(key: key);

  @override
  _RegisterPageState createState() => _RegisterPageState();
}

class _RegisterPageState
    extends ModularState<RegisterPage, RegisterController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: controller.scaffoldKey,
      appBar: AppBar(title: Text(I18n.of(context).create_account)),
      body: Container(
        margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Expanded(
              child: Container(
                child: ListView(
                  children: <Widget>[
                    Observer(
                      builder: (_) => SwpTextInputWidget(
                        prefixIcon: null,
                        text: I18n.of(context).email,
                        errorText: controller.validateEmail(context),
                        keyboardType: TextInputType.emailAddress,
                        onChanged: controller.changeEmail,
                        isOutlineBorder: false,
                      ),
                    ),
                    Observer(
                      builder: (_) => SwpTextInputWidget(
                        prefixIcon: null,
                        isOutlineBorder: false,
                        text: I18n.of(context).password,
                        errorText: controller.validatePassword(context),
                        onChanged: controller.changePassword,
                        obscureText: controller.obscuredPassword,
                        suffixIcon: Icons.remove_red_eye,
                        onSuffixIconPressed: controller.changeObscuredPassword,
                      ),
                    ),
                    Observer(
                      builder: (_) => SwpTextInputWidget(
                        prefixIcon: null,
                        isOutlineBorder: false,
                        text: I18n.of(context).confirm_password,
                        errorText: controller.validateConfirmPassword(context),
                        onChanged: controller.changeConfirmPassword,
                        obscureText: controller.obscuredConfirmPassword,
                        suffixIcon: Icons.remove_red_eye,
                        onSuffixIconPressed:
                            controller.changeObscuredConfirmPassword,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Observer(
                builder: (_) => !controller.isLoading
                    ? SwpButtonFullWidget(
                        text: I18n.of(context).confirm,
                        onPressed: controller.isValidated(context)
                            ? controller.signUp
                            : null)
                    : LoadingWidget())
          ],
        ),
      ),
    );
  }
}
