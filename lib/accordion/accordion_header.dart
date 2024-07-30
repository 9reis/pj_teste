import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pj_teste/getx/style_getx.dart';
import 'package:pj_teste/model/pronun.dart';

class AccordionHeader extends StatelessWidget {
  final Pronun pronun;

  const AccordionHeader({
    super.key,
    required this.pronun,
  });

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    final style = StyleGetx();

    return Row(
      children: [
        Obx(
          () => IconButton(
            icon: Icon(
              Icons.favorite,
              color: pronun.isFavorite.value ? Colors.red : style.kAccentColor,
              size: 27,
            ),
            color: style.kAccentColor,
            onPressed: () {},
          ),
        ),
        const Spacer(),
        Text(
          pronun.title,
          textAlign: TextAlign.center,
          style: TextStyle(
            color: style.themeText,
            fontSize: size.height * 0.03,
            fontWeight: FontWeight.bold,
          ),
        ),
        const Spacer(),
      ],
    );
  }
}
