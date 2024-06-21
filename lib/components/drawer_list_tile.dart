import 'package:flutter/material.dart';

class DrawerListTile extends StatelessWidget {
  //
  final String tileTitle;
  final IconData? tileIcon;
  final void Function()? onTap;

  DrawerListTile(
      {super.key, required this.tileTitle, this.tileIcon, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 10),
      child: ListTile(
        title: Text(
          tileTitle,
          style: TextStyle(fontSize: 15, color: Colors.white),
        ),
        leading: Icon(
          tileIcon,
          size: 30,
          color: Colors.white,
        ),
        onTap: onTap,
      ),
    );
  }
}
