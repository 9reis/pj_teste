// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';

class BtnIcon extends StatelessWidget {
  final IconData icon;
  final double? size;
  Color? color;
  final void Function() func;

  BtnIcon({
    super.key,
    required this.icon,
    this.size,
    this.color,
    required this.func,
  });

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: func,
      icon: Icon(
        icon,
        size: size ?? 40,
        color: color,
      ),
    );
  }
}
