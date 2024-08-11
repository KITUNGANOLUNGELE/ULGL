import 'package:flutter/material.dart';

class AppBarClasse extends StatelessWidget implements PreferredSizeWidget {
  final String titre;
  final Color couleurDeFond;
  final List<Widget>? appActions;
  final TextStyle? textStyle;
  const AppBarClasse({
    super.key,
    required this.titre,
    this.appActions,
    required this.couleurDeFond,
    this.textStyle,
  });
  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text(
        titre,
        style: textStyle,
      ),
      actions: appActions,
      backgroundColor: couleurDeFond,
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(100);
}
