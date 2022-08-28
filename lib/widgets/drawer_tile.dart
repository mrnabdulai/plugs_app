import 'package:flutter/material.dart';
import 'package:plugs_app/constants/colors.dart';

class DrawerTile extends StatelessWidget {
   DrawerTile({Key? key, required this.title, required this.icon,  this.onTap }) : super(key: key);
  final String title;
  final VoidCallback? onTap;
  final IconData icon;
  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: onTap,
      leading: Icon(icon,color: Colors.white),
      title: Text(title),
    );
  }
}
