import 'package:swipe_app/app/shared/models/user_model.dart';
import 'package:swipe_app/app/shared/services/authentication_service.dart';
import 'package:swipe_sdk/swipe_sdk.dart';

class AuthenticationServiceImpl implements AuthenticationService {
  SwipeClient _swipeClient = SwipeClient.instance;

  AuthenticationServiceImpl();

  @override
  Future<UserModel> getCurrentUser() async {
    return null;
  }

  @override
  Future<bool> isEmailVerified() async {
    return null;
  }

  @override
  Future<bool> isPhoneVerified() async {
    return null;
  }

  @override
  Future<void> sendEmailVerification() async {
    return null;
  }

  @override
  Future<String> signIn(String email, String password) async =>
      (await _swipeClient.login.newLoginSession(email, password, 10)).sessionId;

  @override
  Future<void> signOut() => _swipeClient.login.destroyLoginSession();

  @override
  Future<String> signUp(String email, String password) async {
    return null;
  }

  @override
  Future<bool> isLoggedIn() async => (await _swipeClient.login
          .isLoginSessionActive(_swipeClient.session.sessionId))
      .isLogged;
}
