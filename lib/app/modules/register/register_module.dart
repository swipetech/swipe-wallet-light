import 'package:swipe_app/app/modules/register/pages/successfully_created/successfully_created_controller.dart';
import 'package:swipe_app/app/modules/register/pages/successfully_created/successfully_created_page.dart';
import 'package:swipe_app/app/modules/register/register_controller.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:swipe_app/app/modules/register/register_page.dart';
import 'package:swipe_app/app/shared/services/authentication_service.dart';

class RegisterModule extends ChildModule {
  @override
  List<Bind> get binds => [
        Bind((i) => SuccessfullyCreatedController()),
        Bind((i) => RegisterController(i.get<AuthenticationService>())),
      ];

  @override
  List<Router> get routers => [
        Router('/', child: (_, args) => RegisterPage()),
        Router('/successfully_created', child: (_, args) => SuccessfullyCreatedPage()),
      ];

  static Inject get to => Inject<RegisterModule>.of();
}
