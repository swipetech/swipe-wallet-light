import 'package:flutter_modular/flutter_modular.dart';
import 'package:mobx/mobx.dart';

part 'successfully_created_controller.g.dart';

class SuccessfullyCreatedController = _SuccessfullyCreatedBase
    with _$SuccessfullyCreatedController;

abstract class _SuccessfullyCreatedBase with Store {
  void ok(){
    Modular.to.pushReplacementNamed('/validate_phone');
  }
}
