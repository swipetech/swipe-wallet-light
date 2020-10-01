import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:mobx/mobx.dart';
import 'package:swipe_app/app/shared/services/authentication_service.dart';
import 'package:swipe_app/generated/i18n.dart';

part 'login_controller.g.dart';

class LoginController = _LoginBase with _$LoginController;

abstract class _LoginBase with Store {
  final AuthenticationService authenticationService;
  final scaffoldKey = GlobalKey<ScaffoldState>();

  _LoginBase(this.authenticationService);

  final emailController = TextEditingController();

  @observable
  String email;

  @observable
  String password;

  @observable
  bool obscured = true;

  @observable
  double widthLogo = 200;

  @observable
  double heightLogoName = 100;

  @observable
  bool isLoading = false;

  @action
  void changeEmail(String text) => email = text.trim();

  @action
  void changePassword(String text) => password = text.trim();

  @action
  void changeObscured() => obscured = !obscured;

  @action
  void changeIsLoading(bool value) => isLoading = value;

  @action
  changeWidthLogo(bool value) {
    heightLogoName = value ? 40 : 100;
    widthLogo = value ? 40 : 200;
  }

  bool isValidated(BuildContext context) {
    return (validateEmail(context) == null &&
            email != null &&
            email.isNotEmpty) &&
        (validatePassword(context) == null &&
            password != null &&
            password.isNotEmpty);
  }

  String validateEmail(BuildContext context) {
    if (email != null) {
      if (email.isEmpty) {
        return I18n.of(context).email_cannot_be_empty;
      } else if (!email.contains("@")) {
        return I18n.of(context).invalid_email;
      }
      return null;
    }
    return null;
  }

  String validatePassword(BuildContext context) {
    if (password != null) {
      if (password.isEmpty) {
        return I18n.of(context).password_cannot_be_empty;
      }
      return null;
    }
    return null;
  }

  Future signIn() async {
    changeIsLoading(true);
    try {
      await authenticationService.signIn(email, password);
      this._pushDashBoard();
    } catch (error) {
      print(error);
      throw error;
    } finally {
      changeIsLoading(false);
    }
  }

  void _pushDashBoard() => Modular.to.pushReplacementNamed('/dashboard');

  void signUp() async {
    Modular.to.pushNamed('/register');
  }
}
