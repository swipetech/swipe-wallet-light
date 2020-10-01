import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:qr_flutter/qr_flutter.dart';
import 'package:swipe_app/app/modules/home/home_controller.dart';
import 'package:swipe_app/app/modules/home/models/item_menu_model.dart';
import 'package:swipe_app/app/modules/home/widgets/card_service_widget.dart';
import 'package:swipe_app/app/shared/models/user_model.dart';
import 'package:swipe_app/app/shared/themes/swp_theme.dart';
import 'package:swipe_app/app/shared/widgets/loading/loading_widget.dart';
import 'package:swipe_app/app/shared/widgets/swp_expansion_tile/swp_expansion_tile.dart';

const Duration _kExpand = Duration(milliseconds: 400);

class HomePage extends StatefulWidget {
  final String title;
  const HomePage({Key key, this.title = "Home"}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends ModularState<HomePage, HomeController>
    with SingleTickerProviderStateMixin {
  AnimationController _controller;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(duration: _kExpand, vsync: this);

    if (controller.isExpanded) _controller.value = 1.0;
    // this.fun(); // TEMPORALY DISABLED DONT ERASE THIS filho@swipetech.io
  }

  Future fun() async {
    while (true) {
      await Future.any([Future.delayed(const Duration(seconds: 5))]);
      await controller.getBalance();
    }
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  void handleTap() {
    controller.setExpanded(!controller.isExpanded);
    if (controller.isExpanded) {
      _controller.forward();
    } else {
      _controller.reverse().then<void>((void value) {
        if (!mounted) return;
      });
    }
  }

  SwpExpansionTile expansionTile() => SwpExpansionTile(
        backgroundColor: Colors.transparent,
        onExpansionChanged: (isExpanded) {
          print(isExpanded);
        },
        initiallyExpanded: false,
        trailing: Container(
          width: 0,
        ),
        title: _expandableTitle(),
        children: _expandableTitleClidren(),
      );

  Container _expandableTitle() {
    return Container(
      alignment: Alignment.center,
      width: 300,
      child: Observer(
        builder: (BuildContext context) {
          return !controller.isLoading
              ? Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Padding(
                      padding: EdgeInsets.only(bottom: 10),
                      child: Text(
                        "Saldo",
                        textAlign: TextAlign.start,
                        style: TextStyle(
                          color: SwpColors.lightGray,
                          fontWeight: FontWeight.w800,
                        ),
                      ),
                    ),
                    Text(controller.accountBalance,
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w800,
                          fontSize: 32,
                        )),
                  ],
                )
              : Container(
                  margin: const EdgeInsets.all(8),
                  child: LoadingWidget(
                    color: Colors.white,
                  ),
                );
        },
      ),
    );
  }

  _expandableTitleClidren() => <Widget>[
        Center(
          child: FutureBuilder<UserModel>(
            future: controller.getUser(),
            builder: (context, snapshot) {
              return snapshot.hasData ? _qrCode(snapshot) : Container();
            },
          ),
        )
      ];

  Padding _qrCode(AsyncSnapshot<UserModel> snapshot) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: <Widget>[
          QrImage(
            data: snapshot.data.id,
            backgroundColor: Colors.white,
            size: 200,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              snapshot.data.name,
              style: TextStyle(fontSize: 24, color: Colors.white),
            ),
          )
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: <Widget>[
            superiorSection(context),
            Expanded(
              child: _menuItensGrid(),
            ),
          ],
        ),
      ),
    );
  }

  Stack superiorSection(BuildContext context) {
    return Stack(
      children: <Widget>[
        Container(
          color: Theme.of(context).primaryColor,
        ),
        Container(
          color: Theme.of(context).primaryColor,
          alignment: Alignment.center,
          padding: const EdgeInsets.all(8),
          child: new Column(
            children: <Widget>[
              new Container(
                padding: EdgeInsets.only(bottom: 15),
                margin: const EdgeInsets.all(16),
                child: new Row(
                  children: <Widget>[
                    Image.asset('assets/img/logo_swipe_negativo.png',
                        height: 60.0),
                  ],
                ),
              ),
              Builder(
                builder: (_) {
                  var e = expansionTile();
                  return Column(
                    children: <Widget>[
                      Theme(
                        data: Theme.of(context).copyWith(
                            dividerColor: Colors.transparent,
                            iconTheme: IconThemeData(color: Colors.white)),
                        child: e,
                      ),
                    ],
                  );
                },
              ),
            ],
          ),
        ),
      ],
    );
  }

  Container _menuItensGrid() {
    return Container(
        child: GridView.count(
            primary: false,
            shrinkWrap: true,
            childAspectRatio: 0.9,
            mainAxisSpacing: 2,
            addAutomaticKeepAlives: true,
            addRepaintBoundaries: true,
            semanticChildCount: 1,
            addSemanticIndexes: true,
            crossAxisCount: 3,
            children:
                _menus().map((item) => CardServiceWidget(item)).toList()));
  }

  List<ItemMenuModel> _menus() => <ItemMenuModel>[
        ItemMenuModel("Depósito", "assets/icons/deposit.svg", () => {}),
        ItemMenuModel("Extrato", "assets/icons/bill.svg", () => {}),
        ItemMenuModel(
            "Saque", "assets/icons/account.svg", this._showInProgressAlertBar),
        ItemMenuModel(
            "Pix", "assets/icons/pix.png", this._showInProgressAlertBar),
        ItemMenuModel("Transferências", "assets/icons/exchange.svg", () => {}),
        ItemMenuModel("Pagamentos", "assets/icons/bill.svg",
            () => controller.goTo('/payments')),
      ];

  _showInProgressAlertBar() {
    Scaffold.of(context)
        .showSnackBar(SnackBar(content: Text('Em Desenvolvimento...')));
  }
}
