import 'package:flutter_modular/flutter_modular.dart';
import 'package:mobx/mobx.dart';
import 'package:swipe_app/app/shared/models/user_model.dart';
import 'package:swipe_app/app/shared/repositories/user/user_repository.dart';

part 'home_controller.g.dart';

class HomeController = _HomeBase with _$HomeController;

abstract class _HomeBase with Store {
  final UserRepository userRepository;

  _HomeBase(this.userRepository) {
    this.userRepository.getBalance().then((value) {
      setAccountBalance("R\$ $value");
      setIsLoading(false);
    });
  }

  Future<void> getBalance() async {
    final value = await this.userRepository.getBalance();
    setAccountBalance("R\$ $value");
  }

  Future<UserModel> getUser() => userRepository.getUser();

  @observable
  String accountBalance = '';

  @observable
  bool isExpanded = false;

  @observable
  bool isLoading = true;

  @action
  void setExpanded(bool value) => this.isExpanded = value;

  @action
  void setAccountBalance(String value) => this.accountBalance = value;

  @action
  void setIsLoading(bool value) => this.isLoading = value;

  Future<void> goTo(String route, {Map<String, dynamic> args}) async {
    await this.getBalance();
    if(route == '/transfer_p2p'){
      args["balance"] = this.accountBalance;
    }
    Modular.to.pushNamed(route, arguments: args);
  }
}