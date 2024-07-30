import 'package:flutter/material.dart';
import 'package:get/get.dart';

class StyleGetx extends GetxController {
// LIGHT
  final kPrimaryColorLight = const Color(0XFFE9EEF2);
  final kSecondaryColorLight = const Color(0XFFF9F9F9);
  final kTextColorLight = Colors.black;

// DARK
  final kPrimaryColorDark = const Color(0XFF474857);
  final kSecondaryColorDark = const Color(0XFF5C5D69);
  final kTextColorDark = Colors.white;

  final kAccentColor = const Color(0XFFA0A7AD);

  RxBool isDark = true.obs;

  void changeTema() => isDark.value = !isDark.value;

  Color get themeText => isDark.value ? kTextColorDark : kTextColorLight;

  Color get themePrimary =>
      isDark.value ? kPrimaryColorDark : kPrimaryColorLight;

  Color get themeSecondary =>
      isDark.value ? kSecondaryColorDark : kSecondaryColorLight;
}
