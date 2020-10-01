import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:swipe_app/app/modules/home/models/item_menu_model.dart';
import 'package:swipe_app/app/shared/themes/swp_theme.dart';

class CardServiceWidget extends StatelessWidget {
  final ItemMenuModel menu;

  const CardServiceWidget(this.menu);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: InkWell(
        onTap: menu.onPressed,
        child: Card(
            elevation: 2,
            child: new Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      _secondIcon(),
                      _icon(),
                    ],
                  ),
                  _text(),
                ])),
      ),
    );
  }

  _icon() => menu.pathIcon.split(".").last == "svg"
      ? SvgPicture.asset(menu.pathIcon,
          height: menu.pathSecondIcon == null ? 40 : 24,
          color: Colors.grey[350])
      : Image.asset(menu.pathIcon,
          height: menu.pathSecondIcon == null ? 32 : 24,
          color: Colors.grey[350]);

  _secondIcon() => menu.pathSecondIcon != null
      ? Padding(
          padding: const EdgeInsets.only(right: 8),
          child: SvgPicture.asset(menu.pathSecondIcon,
              height: 32, color: Colors.grey[350]),
        )
      : Container();

  _text() => Padding(
        padding: const EdgeInsets.all(8.0),
        child: Text(
          menu.title,
          maxLines: 2,
          overflow: TextOverflow.ellipsis,
          textAlign: TextAlign.center,
          style: TextStyle(
            fontWeight: FontWeight.w800,
            color: SwpColors.black,
            fontSize: 14,
          ),
        ),
      );
}
