import 'package:swipe_app/app/shared/models/user_model.dart';

abstract class LedgerService {
  Future<String> transferP2P(UserModel user, double value);
}
