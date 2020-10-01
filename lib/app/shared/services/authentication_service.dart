import 'package:swipe_app/app/shared/models/user_model.dart';
import 'package:swipe_sdk/swipe_sdk.dart';

abstract class AuthenticationService {

  Future<String> signIn(String email, String password);

  Future<String> signUp(String email, String password);

  Future<UserModel> getCurrentUser();

  Future<void> sendEmailVerification();

  Future<bool> isEmailVerified();

  Future<bool> isPhoneVerified();

  Future<bool> isLoggedIn();
}
