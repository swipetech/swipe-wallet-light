import 'package:flutter_modular/flutter_modular.dart';
import 'package:swipe_app/app/modules/splash/splash_controller.dart';
import 'package:swipe_app/app/modules/splash/splash_page.dart';
import 'package:swipe_app/app/shared/repositories/user/user_repository.dart';
import 'package:swipe_app/app/shared/services/authentication_service.dart';
import 'package:swipe_app/app/shared/services/secret_loader_service.dart';

class SplashModule extends ChildModule {
  @override
  List<Bind> get binds => [
        Bind((i) => SplashController(i.get<AuthenticationService>(),
            i.get<UserRepository>(), i.get<SecretLoader>())),
      ];

  @override
  List<Router> get routers => [
        Router('/', child: (_, args) => SplashPage()),
      ];

  static Inject get to => Inject<SplashModule>.of();
}
