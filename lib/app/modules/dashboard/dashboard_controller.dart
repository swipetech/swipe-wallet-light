import 'package:mobx/mobx.dart';

part 'dashboard_controller.g.dart';

class DashboardController = _DashboardControllerBase with _$DashboardController;

abstract class _DashboardControllerBase with Store {

  @observable
  int page = 0;

  @action
  setPage(int page) => this.page = page;

}
