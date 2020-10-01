// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'home_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$HomeController on _HomeBase, Store {
  final _$accountBalanceAtom = Atom(name: '_HomeBase.accountBalance');

  @override
  String get accountBalance {
    _$accountBalanceAtom.reportRead();
    return super.accountBalance;
  }

  @override
  set accountBalance(String value) {
    _$accountBalanceAtom.reportWrite(value, super.accountBalance, () {
      super.accountBalance = value;
    });
  }

  final _$isExpandedAtom = Atom(name: '_HomeBase.isExpanded');

  @override
  bool get isExpanded {
    _$isExpandedAtom.reportRead();
    return super.isExpanded;
  }

  @override
  set isExpanded(bool value) {
    _$isExpandedAtom.reportWrite(value, super.isExpanded, () {
      super.isExpanded = value;
    });
  }

  final _$isLoadingAtom = Atom(name: '_HomeBase.isLoading');

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

  final _$_HomeBaseActionController = ActionController(name: '_HomeBase');

  @override
  void setExpanded(bool value) {
    final _$actionInfo =
        _$_HomeBaseActionController.startAction(name: '_HomeBase.setExpanded');
    try {
      return super.setExpanded(value);
    } finally {
      _$_HomeBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setAccountBalance(String value) {
    final _$actionInfo = _$_HomeBaseActionController.startAction(
        name: '_HomeBase.setAccountBalance');
    try {
      return super.setAccountBalance(value);
    } finally {
      _$_HomeBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setIsLoading(bool value) {
    final _$actionInfo =
        _$_HomeBaseActionController.startAction(name: '_HomeBase.setIsLoading');
    try {
      return super.setIsLoading(value);
    } finally {
      _$_HomeBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
accountBalance: ${accountBalance},
isExpanded: ${isExpanded},
isLoading: ${isLoading}
    ''';
  }
}
