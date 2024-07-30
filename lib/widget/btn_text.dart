// ignore_for_file: must_be_immutable
import 'package:flutter/material.dart';
import 'package:pj_teste/getx/style_getx.dart';

class BtnText extends StatelessWidget {
  final double? width;
  final String text;
  Color? color;
  final void Function() func;

  BtnText({
    super.key,
    this.width,
    required this.text,
    this.color,
    required this.func,
  });

  @override
  Widget build(BuildContext context) {
    final style = StyleGetx();

    return SizedBox(
      width: width ?? double.infinity,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          padding: const EdgeInsets.symmetric(vertical: 10),
          backgroundColor: color ?? style.kAccentColor,
          elevation: 5,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(16),
          ),
        ),
        onPressed: func,
        child: Text(
          text,
          style: TextStyle(
            fontSize: 16,
            color: style.themeText,
          ),
        ),
      ),
    );
  }
}
