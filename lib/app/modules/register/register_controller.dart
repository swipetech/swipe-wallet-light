import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:mobx/mobx.dart';
import 'package:swipe_app/app/shared/services/authentication_service.dart';
import 'package:swipe_app/app/shared/widgets/show_error/show_error_widget.dart';
import 'package:swipe_app/generated/i18n.dart';

part 'register_controller.g.dart';

class RegisterController = _RegisterBase with _$RegisterController;

abstract class _RegisterBase with Store {
  final AuthenticationService authenticationService;
  final scaffoldKey = GlobalKey<ScaffoldState>();

  _RegisterBase(this.authenticationService);

  @observable
  String email;

  @observable
  String password;

  @observable
  String confirmPassword;

  @observable
  bool obscuredPassword = true;

  @observable
  bool obscuredConfirmPassword = true;

  @observable
  bool isLoading = false;

  @action
  void changeEmail(String text) => email = text;

  @action
  void changePassword(String text) => password = text;

  @action
  void changeConfirmPassword(String text) => confirmPassword = text;

  @action
  void changeObscuredPassword() => obscuredPassword = !obscuredPassword;

  @action
  void changeObscuredConfirmPassword() =>
      obscuredConfirmPassword = !obscuredConfirmPassword;

  @action
  void changeIsLoading(bool value) => isLoading = value;

  bool isValidated(BuildContext context) {
    return (validateEmail(context) == null &&
            email != null &&
            email.isNotEmpty) &&
        (validatePassword(context) == null &&
            password != null &&
            password.isNotEmpty) &&
        (validateConfirmPassword(context) == null &&
            confirmPassword != null &&
            confirmPassword.isNotEmpty);
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

  String validateConfirmPassword(BuildContext context) {
    if (confirmPassword != null) {
      if (confirmPassword != password) {
        return I18n.of(context).passwords_dont_match;
      }
      return null;
    }
    return null;
  }

  void signUp() async {
    changeIsLoading(true);
    try {
      await authenticationService.signUp(email, password);
      Modular.to.pushReplacementNamed('/register/successfully_created');
    } catch (e) {
      String message = "";
      if(e.code == "ERROR_EMAIL_ALREADY_IN_USE"){
        message = I18n.of(scaffoldKey.currentContext).email_already_in_use;
      }else{
        message = I18n.of(scaffoldKey.currentContext).failed_create_account;
      }
      changeIsLoading(false);
      scaffoldKey.currentState.showSnackBar(ShowErrorWidget(message));
    }
  }
}
