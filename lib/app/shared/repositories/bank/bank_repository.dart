import 'package:swipe_app/app/shared/models/bank_model.dart';

abstract class BankRepository {
  Future<List<BankModel>> getAll();
}
