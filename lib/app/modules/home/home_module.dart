import 'package:flutter/src/widgets/framework.dart';
import 'package:swipe_app/app/modules/home/home_controller.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:swipe_app/app/modules/home/home_page.dart';
import 'package:swipe_app/app/shared/repositories/user/user_repository.dart';

class HomeModule extends WidgetModule {
  @override
  List<Bind> get binds => [
        Bind((i) => HomeController(i.get<UserRepository>())),
      ];

  @override
  List<Router> get routers => [
        Router('/', child: (_, args) => HomePage()),
      ];

  static Inject get to => Inject<HomeModule>.of();

  @override
  Widget get view => HomePage();
}
