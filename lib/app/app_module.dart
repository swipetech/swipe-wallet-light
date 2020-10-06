import 'package:swipe_app/app/app_controller.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter/material.dart';
import 'package:swipe_app/app/app_widget.dart';
import 'package:swipe_app/app/modules/dashboard/dashboard_module.dart';
import 'package:swipe_app/app/modules/home/home_module.dart';
import 'package:swipe_app/app/modules/login/login_module.dart';
import 'package:swipe_app/app/modules/register/register_module.dart';
import 'package:swipe_app/app/modules/splash/splash_module.dart';
import 'package:swipe_app/app/shared/repositories/user/impl/user_repository_impl.dart';
import 'package:swipe_app/app/shared/services/impl/authentication_service_impl.dart';
import 'package:swipe_app/app/shared/services/secret_loader_service.dart';

class AppModule extends MainModule {
  @override
  List<Bind> get binds => [
        Bind((i) => AppController()),
        Bind((i) => AuthenticationServiceImpl()),
        Bind((i) => UserRepositoryImpl()),
        Bind((i) => SecretLoader(secretPath: "secrets.json"))
      ];

  @override
  List<ModularRouter> get routers => [
        ModularRouter('/', module: SplashModule()),
        ModularRouter('/register', module: RegisterModule()),
        ModularRouter('/home', module: HomeModule()),
        ModularRouter('/login', module: LoginModule()),
        ModularRouter('/dashboard', module: DashboardModule()),
      ];

  @override
  Widget get bootstrap => AppWidget();

  static Inject get to => Inject<AppModule>.of();
}
