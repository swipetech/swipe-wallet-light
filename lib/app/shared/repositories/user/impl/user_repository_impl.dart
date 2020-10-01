import 'package:swipe_app/app/shared/models/user_model.dart';
import 'package:swipe_app/app/shared/repositories/user/user_repository.dart';
import 'package:swipe_sdk/swipe_sdk.dart';

class UserRepositoryImpl implements UserRepository {
  SwipeClient _swipeClient = SwipeClient.instance;

  @override
  Future<UserModel> getUser({id}) async {
    final session = _swipeClient.session;
    return UserModel(name: "Swipe", id: id == null ? session.accountId : id);
  }

  @override
  Future<void> saveUser() {
    // TODO: implement saveUser
    throw UnimplementedError();
  }

  @override
  Future<String> getBalance() async {
    final backedAsset = _swipeClient.assetId;

    final accountDTO = await _swipeClient.ledger.getMyAccount();
    if (accountDTO.balances == null || accountDTO.balances.isEmpty) {
      return '0.00';
    }

    final balance =
        accountDTO.balances.singleWhere((e) => e.assetId == backedAsset);

    return balance.amount ?? '0.00';
  }
}
