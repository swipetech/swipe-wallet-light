import 'package:swipe_app/app/shared/models/user_model.dart';
import 'package:swipe_app/app/shared/services/ledger_service.dart';
import 'package:swipe_sdk/swipe_sdk.dart';

class LedgerServiceImpl implements LedgerService {
  final _client = SwipeClient.instance;
  @override
  Future<String> transferP2P(UserModel user, double value) async {
    final action = NewActionBatchDTO(actions: [
      TransferDTO(
          amount: value.toString(),
          assetId: _client.assetId,
          from: _client.session.accountId,
          to: user.id)
    ]);
    final result = await _client.ledger.newActionBatch(action);
    return result.id;
  }
}
