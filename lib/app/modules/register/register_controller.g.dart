// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'register_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$RegisterController on _RegisterBase, Store {
  final _$emailAtom = Atom(name: '_RegisterBase.email');

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

  final _$passwordAtom = Atom(name: '_RegisterBase.password');

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

  final _$confirmPasswordAtom = Atom(name: '_RegisterBase.confirmPassword');

  @override
  String get confirmPassword {
    _$confirmPasswordAtom.reportRead();
    return super.confirmPassword;
  }

  @override
  set confirmPassword(String value) {
    _$confirmPasswordAtom.reportWrite(value, super.confirmPassword, () {
      super.confirmPassword = value;
    });
  }

  final _$obscuredPasswordAtom = Atom(name: '_RegisterBase.obscuredPassword');

  @override
  bool get obscuredPassword {
    _$obscuredPasswordAtom.reportRead();
    return super.obscuredPassword;
  }

  @override
  set obscuredPassword(bool value) {
    _$obscuredPasswordAtom.reportWrite(value, super.obscuredPassword, () {
      super.obscuredPassword = value;
    });
  }

  final _$obscuredConfirmPasswordAtom =
      Atom(name: '_RegisterBase.obscuredConfirmPassword');

  @override
  bool get obscuredConfirmPassword {
    _$obscuredConfirmPasswordAtom.reportRead();
    return super.obscuredConfirmPassword;
  }

  @override
  set obscuredConfirmPassword(bool value) {
    _$obscuredConfirmPasswordAtom
        .reportWrite(value, super.obscuredConfirmPassword, () {
      super.obscuredConfirmPassword = value;
    });
  }

  final _$isLoadingAtom = Atom(name: '_RegisterBase.isLoading');

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

  final _$_RegisterBaseActionController =
      ActionController(name: '_RegisterBase');

  @override
  void changeEmail(String text) {
    final _$actionInfo = _$_RegisterBaseActionController.startAction(
        name: '_RegisterBase.changeEmail');
    try {
      return super.changeEmail(text);
    } finally {
      _$_RegisterBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void changePassword(String text) {
    final _$actionInfo = _$_RegisterBaseActionController.startAction(
        name: '_RegisterBase.changePassword');
    try {
      return super.changePassword(text);
    } finally {
      _$_RegisterBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void changeConfirmPassword(String text) {
    final _$actionInfo = _$_RegisterBaseActionController.startAction(
        name: '_RegisterBase.changeConfirmPassword');
    try {
      return super.changeConfirmPassword(text);
    } finally {
      _$_RegisterBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void changeObscuredPassword() {
    final _$actionInfo = _$_RegisterBaseActionController.startAction(
        name: '_RegisterBase.changeObscuredPassword');
    try {
      return super.changeObscuredPassword();
    } finally {
      _$_RegisterBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void changeObscuredConfirmPassword() {
    final _$actionInfo = _$_RegisterBaseActionController.startAction(
        name: '_RegisterBase.changeObscuredConfirmPassword');
    try {
      return super.changeObscuredConfirmPassword();
    } finally {
      _$_RegisterBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void changeIsLoading(bool value) {
    final _$actionInfo = _$_RegisterBaseActionController.startAction(
        name: '_RegisterBase.changeIsLoading');
    try {
      return super.changeIsLoading(value);
    } finally {
      _$_RegisterBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
email: ${email},
password: ${password},
confirmPassword: ${confirmPassword},
obscuredPassword: ${obscuredPassword},
obscuredConfirmPassword: ${obscuredConfirmPassword},
isLoading: ${isLoading}
    ''';
  }
}
