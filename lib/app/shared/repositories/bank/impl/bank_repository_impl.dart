import 'package:swipe_app/app/shared/models/bank_model.dart';
import 'package:swipe_app/app/shared/repositories/bank/bank_repository.dart';
import 'package:swipe_app/app/shared/services/impl/cash_out_service_impl.dart';

class BankRepositoryImpl implements BankRepository {
  @override
  Future<List<BankModel>> getAll() async => CashOutServiceImpl().getBanks();
}
