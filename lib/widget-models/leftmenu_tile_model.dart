import 'package:flutter/material.dart';

class LeftMenuTileModel extends StatelessWidget {
  final Widget? leading;
  final Widget? title;
  final GestureTapCallback? onTap;
  final bool selected;

  const LeftMenuTileModel({
    Key? key,
    required this.leading,
    required this.title,
    required this.onTap,
    required this.selected,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
        leading: leading,
        title: title,
        dense: true,
        contentPadding: EdgeInsets.all(8),
        enabled: true,
        onTap: onTap,
        selected: selected,
        focusColor: Colors.transparent,
        tileColor: Colors.transparent,
        selectedTileColor: Colors.indigoAccent,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
              topRight: Radius.circular(50), bottomRight: Radius.circular(50)),
        ));
  }
}