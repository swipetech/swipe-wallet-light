import 'package:swipe_app/app/modules/login/login_controller.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:swipe_app/app/modules/login/login_page.dart';
import 'package:swipe_app/app/shared/services/authentication_service.dart';

import 'package:flutter/material.dart';

class LoginModule extends ChildModule {
  @override
  List<Bind> get binds => [
        Bind((i) => LoginController(i.get<AuthenticationService>())),
      ];

  @override
  List<Router> get routers => [
        Router('/', child: (_, args) => Scaffold(body: LoginPage())),
      ];

  static Inject get to => Inject<LoginModule>.of();
}
