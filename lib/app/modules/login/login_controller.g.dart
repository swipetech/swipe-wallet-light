// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'login_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$LoginController on _LoginBase, Store {
  final _$emailAtom = Atom(name: '_LoginBase.email');

  @override
  String get email {
    _$emailAtom.reportRead();
    return super.email;
  }

  @override
  set email(String value) {
    _$emailAtom.reportWrite(value, super.email, () {
      super.email = value;
    });
  }

  final _$passwordAtom = Atom(name: '_LoginBase.password');

  @override
  String get password {
    _$passwordAtom.reportRead();
    return super.password;
  }

  @override
  set password(String value) {
    _$passwordAtom.reportWrite(value, super.password, () {
      super.password = value;
    });
  }

  final _$obscuredAtom = Atom(name: '_LoginBase.obscured');

  @override
  bool get obscured {
    _$obscuredAtom.reportRead();
    return super.obscured;
  }

  @override
  set obscured(bool value) {
    _$obscuredAtom.reportWrite(value, super.obscured, () {
      super.obscured = value;
    });
  }

  final _$widthLogoAtom = Atom(name: '_LoginBase.widthLogo');

  @override
  double get widthLogo {
    _$widthLogoAtom.reportRead();
    return super.widthLogo;
  }

  @override
  set widthLogo(double value) {
    _$widthLogoAtom.reportWrite(value, super.widthLogo, () {
      super.widthLogo = value;
    });
  }

  final _$heightLogoNameAtom = Atom(name: '_LoginBase.heightLogoName');

  @override
  double get heightLogoName {
    _$heightLogoNameAtom.reportRead();
    return super.heightLogoName;
  }

  @override
  set heightLogoName(double value) {
    _$heightLogoNameAtom.reportWrite(value, super.heightLogoName, () {
      super.heightLogoName = value;
    });
  }

  final _$isLoadingAtom = Atom(name: '_LoginBase.isLoading');

  @override
  bool get isLoading {
    _$isLoadingAtom.reportRead();
    return super.isLoading;
  }

  @override
  set isLoading(bool value) {
    _$isLoadingAtom.reportWrite(value, super.isLoading, () {
      super.isLoading = value;
    });
  }

  final _$_LoginBaseActionController = ActionController(name: '_LoginBase');

  @override
  void changeEmail(String text) {
    final _$actionInfo = _$_LoginBaseActionController.startAction(
        name: '_LoginBase.changeEmail');
    try {
      return super.changeEmail(text);
    } finally {
      _$_LoginBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void changePassword(String text) {
    final _$actionInfo = _$_LoginBaseActionController.startAction(
        name: '_LoginBase.changePassword');
    try {
      return super.changePassword(text);
    } finally {
      _$_LoginBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void changeObscured() {
    final _$actionInfo = _$_LoginBaseActionController.startAction(
        name: '_LoginBase.changeObscured');
    try {
      return super.changeObscured();
    } finally {
      _$_LoginBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void changeIsLoading(bool value) {
    final _$actionInfo = _$_LoginBaseActionController.startAction(
        name: '_LoginBase.changeIsLoading');
    try {
      return super.changeIsLoading(value);
    } finally {
      _$_LoginBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic changeWidthLogo(bool value) {
    final _$actionInfo = _$_LoginBaseActionController.startAction(
        name: '_LoginBase.changeWidthLogo');
    try {
      return super.changeWidthLogo(value);
    } finally {
      _$_LoginBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
email: ${email},
password: ${password},
obscured: ${obscured},
widthLogo: ${widthLogo},
heightLogoName: ${heightLogoName},
isLoading: ${isLoading}
    ''';
  }
}
