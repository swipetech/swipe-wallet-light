// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'splash_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$SplashController on _SplashBase, Store {
  final _$completedAtom = Atom(name: '_SplashBase.completed');

  @override
  bool get completed {
    _$completedAtom.reportRead();
    return super.completed;
  }

  @override
  set completed(bool value) {
    _$completedAtom.reportWrite(value, super.completed, () {
      super.completed = value;
    });
  }

  final _$_SplashBaseActionController = ActionController(name: '_SplashBase');

  @override
  dynamic complete() {
    final _$actionInfo =
        _$_SplashBaseActionController.startAction(name: '_SplashBase.complete');
    try {
      return super.complete();
    } finally {
      _$_SplashBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
completed: ${completed}
    ''';
  }
}
