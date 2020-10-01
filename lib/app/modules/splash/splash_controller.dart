import 'package:flutter_modular/flutter_modular.dart';
import 'package:mobx/mobx.dart';
import 'package:swipe_app/app/shared/models/secret_model.dart';
import 'package:swipe_app/app/shared/services/authentication_service.dart';
import 'package:swipe_app/app/shared/services/secret_loader_service.dart';
import 'package:swipe_sdk/swipe_sdk.dart';

import '../../shared/models/user_model.dart';
import '../../shared/repositories/user/user_repository.dart';

part 'splash_controller.g.dart';

class SplashController = _SplashBase with _$SplashController;

abstract class _SplashBase with Store {
  final AuthenticationService _authenticationService;
  final UserRepository _userRepository;
  final SecretLoader _secretLoader;

  @observable
  bool completed = false;

  _SplashBase(
    this._authenticationService,
    this._userRepository,
    this._secretLoader,
  ) {
    Future<bool> logged = isLoggedIn();
    reaction((_) => this.completed, (_) async {
      _move(await logged);
    });
  }

  load() async {
    try {
      final secret = await this._secretLoader.load();
      await initSwipeClient(secret);
    } catch (e) {
      print(e);
    }
  }

  _move(bool logged) {
    if (!logged)
      Modular.to.pushReplacementNamed('/login');
    else
      Modular.to.pushReplacementNamed('/dashboard');
  }

  @action
  complete() => this.completed = true;

  Future<bool> isLoggedIn() async {
    try {
      return await _authenticationService.isLoggedIn();
    } catch (e) {
      print(e);
      return false;
    }
  }

  Future<UserModel> getUser() => _userRepository.getUser();

  Future<void> initSwipeClient(Secret secret) => SwipeClient.init(Options(
      apiKey: secret.apiKey,
      secret: secret.secret,
      baseUrl: secret.baseUrl,
      assetId: secret.backedAsset));
}
