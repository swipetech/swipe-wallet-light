import '../../models/user_model.dart';

abstract class UserRepository {
  Future<void> saveUser();
  Future<UserModel> getUser({String id});
  Future<String> getBalance();
}
