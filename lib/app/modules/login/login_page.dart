import 'package:flutter/material.dart';
import 'package:flutter_keyboard_visibility/flutter_keyboard_visibility.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter_svg/svg.dart';
import 'package:swipe_app/app/modules/login/login_controller.dart';
import 'package:swipe_app/app/shared/widgets/loading/loading_widget.dart';
import 'package:swipe_app/app/shared/widgets/show_error/show_error_widget.dart';
import 'package:swipe_app/app/shared/widgets/swp_button_flat/swp_button_flat_widget.dart';
import 'package:swipe_app/app/shared/widgets/swp_button_full/swp_button_full_widget.dart';
import 'package:swipe_app/app/shared/widgets/swp_button_link/swp_button_link_widget.dart';
import 'package:swipe_app/app/shared/widgets/swp_text_input/swp_text_input_widget.dart';
import 'package:swipe_app/generated/i18n.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends ModularState<LoginPage, LoginController> {
  UniqueKey scaffoldKey = UniqueKey();

  @override
  void initState() {
    KeyboardVisibility.onChange.listen(controller.changeWidthLogo);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      body: Container(
        margin: const EdgeInsets.all(16),
        child: Column(
          children: <Widget>[
            _logos(),
            this._loginFields(context),
          ],
        ),
      ),
    );
  }

  Expanded _logos() {
    return Expanded(
      child: ListView(
        shrinkWrap: true,
        children: <Widget>[
          _rectratableImage(),
          _rectratableLogo(),
        ],
      ),
    );
  }

  Align _rectratableImage() {
    return Align(
      alignment: Alignment.centerRight,
      child: Observer(
        builder: (_) => AnimatedContainer(
          width: controller.widthLogo,
          duration: Duration(milliseconds: 200),
          child: Image.asset(
            'assets/img/home.png',
          ),
        ),
      ),
    );
  }

  Hero _rectratableLogo() {
    return Hero(
      tag: 'logo',
      child: Observer(
        builder: (_) => AnimatedContainer(
          height: controller.heightLogoName,
          duration: Duration(milliseconds: 200),
          child: SvgPicture.asset(
            'assets/img/logo_swipe.svg',
          ),
        ),
      ),
    );
  }

  _loginFields(BuildContext context) => Column(
        children: <Widget>[
          _emailField(context),
          SizedBox(
            height: 15,
          ),
          _passwordField(context),
          _buttons(context),
        ],
      );

  SwpTextInputWidget _emailField(BuildContext context) {
    return SwpTextInputWidget(
        prefixIcon: Icons.mail_outline,
        hintText: I18n.of(context).email,
        errorText: controller.validateEmail(context),
        keyboardType: TextInputType.emailAddress,
        onChanged: controller.changeEmail);
  }

  Observer _passwordField(BuildContext context) {
    return Observer(
        builder: (_) => SwpTextInputWidget(
            prefixIcon: Icons.lock_outline,
            suffixIcon: Icons.remove_red_eye,
            onSuffixIconPressed: controller.changeObscured,
            hintText: I18n.of(context).password,
            obscureText: controller.obscured,
            errorText: controller.validatePassword(context),
            keyboardType: TextInputType.emailAddress,
            onChanged: controller.changePassword));
  }

  Observer _buttons(BuildContext context) {
    return Observer(
      builder: (_) => controller.isLoading
          ? LoadingWidget()
          : new Column(
              children: <Widget>[
                _forgetPassword(context),
                _loginInButton(context),
                _createAccountButton(context)
              ],
            ),
    );
  }

  SwpButtonLinkWidget _forgetPassword(BuildContext context) {
    return SwpButtonLinkWidget(
      text: I18n.of(context).forgot_password,
      onPressed: () {},
    );
  }

  SwpButtonFlatWidget _createAccountButton(BuildContext context) {
    return SwpButtonFlatWidget(
      text: I18n.of(context).create_account,
      onPressed: controller.signUp,
    );
  }

  SwpButtonFullWidget _loginInButton(BuildContext context) {
    return SwpButtonFullWidget(
        text: I18n.of(context).sign_in,
        onPressed: controller.isValidated(context)
            ? this._loginSignInOnPressed
            : null);
  }

  _loginSignInOnPressed() {
    controller.signIn().catchError((e) {
      Scaffold.of(context)
          .showSnackBar(ShowErrorWidget(I18n.of(context).invalid_email));
    });
  }
}
