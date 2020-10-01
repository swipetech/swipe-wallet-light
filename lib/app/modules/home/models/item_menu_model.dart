class ItemMenuModel {
  final String title;
  final String pathIcon;
  final String pathSecondIcon;
  final Function onPressed;

  ItemMenuModel(this.title, this.pathIcon, this.onPressed,
      {this.pathSecondIcon});
}
