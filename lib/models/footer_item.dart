import 'package:flutter/material.dart';

class FooterItem {
  final IconData iconData;
  final String title;
  final VoidCallback? onTap;

  FooterItem({this.onTap, required this.iconData, required this.title});
}
