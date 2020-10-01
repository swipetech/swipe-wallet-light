import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:swipe_app/app/modules/home/home_module.dart';
import 'package:swipe_app/app/shared/themes/swp_theme.dart';
import 'dashboard_controller.dart';

class DashboardPage extends StatefulWidget {
  const DashboardPage({Key key}) : super(key: key);

  @override
  _DashboardPageState createState() => _DashboardPageState();
}

class _DashboardPageState
    extends ModularState<DashboardPage, DashboardController> {
  //use 'controller' variable to access controller
  List<Widget> pages = [
    HomeModule(),
    Container(),
    Container(),
    Container(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Observer(
        builder: (_) => pages[controller.page],
      ),
      bottomNavigationBar: Observer(
        builder: (_) => BottomNavigationBar(
          unselectedItemColor: SwpColors.grey,
          type: BottomNavigationBarType.fixed,
          showSelectedLabels: false,
          showUnselectedLabels: false,
          onTap: controller.setPage,
          selectedItemColor: Theme.of(context).primaryColor,
          currentIndex: controller.page,
          items: [
            BottomNavigationBarItem(
                icon: Icon(MdiIcons.homeOutline), title: Text("Home")),
            BottomNavigationBarItem(
                icon: Image.asset(
                  "assets/icons/pix.png",
                  height: 24,
                  color: controller.page == 1
                      ? Theme.of(context).primaryColor
                      : SwpColors.grey,
                ),
                title: Text("Pix")),
            BottomNavigationBarItem(
                icon: Icon(Icons.notifications_none),
                title: Text("Notification")),
            BottomNavigationBarItem(
                icon: Icon(Icons.person_outline), title: Text("Home")),
          ],
        ),
      ),
    );
  }
}
