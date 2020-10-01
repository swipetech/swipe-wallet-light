import 'package:flutter_modular/flutter_modular_test.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:swipe_app/app/shared/services/cash_out_service.dart';
import 'package:swipe_app/app/shared/services/impl/cash_out_service_impl.dart';
import 'package:swipe_sdk/swipe_sdk.dart';

void main() {
  CashOutService cashOut;

  setUp(() async {
    cashOut = CashOutServiceImpl();
    await SwipeClient.init(
        apiKey:
        '682ffb8b9e4e58f1670969faf42e6cbafb1964baa5a6c2d83529426723468450',
        secret:
        '29381bb0d2689a8db4d07ec9ed5e23f2c3354c613c0d730a5aedd4ab94430b94',
        baseUrl: "dev.swipetech.io"
    );
    await SwipeClient.instance.login.newLoginSession('filho@swipetech.io', '123456789', 10);
  });

  group('CashoutBoleto', () {
    test("GetBanks", () async {
      cashOut = CashOutServiceImpl();
      await cashOut.getBanks();
    });
  });
}
