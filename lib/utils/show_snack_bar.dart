import 'package:flutter/material.dart';
import 'package:pj_teste/getx/style_getx.dart';

void showSnackBar(BuildContext context, String text, int duration) {
  final style = StyleGetx();

  ScaffoldMessenger.of(context).clearSnackBars();
  ScaffoldMessenger.of(context).showSnackBar(
    SnackBar(
      content: Text(
        text,
        style: const TextStyle(
            color: Colors.black, fontWeight: FontWeight.bold, fontSize: 20),
        textAlign: TextAlign.center,
      ),
      duration: Duration(seconds: duration),
      backgroundColor: style.kAccentColor,
    ),
  );
}
