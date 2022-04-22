import 'package:flutter/material.dart';
import '../../theme_app/app_color_scheme.dart';
import 'set_color.dart';

class AppTextTheme {
  static const headline1 = TextStyle(
    fontFamily: 'SFCompactRounded',
    fontWeight: FontWeight.w100,
    fontSize: 96,
    letterSpacing: (-1.5),
  );
  static const headline2 = TextStyle(
    fontFamily: 'SFCompactRounded',
    fontWeight: FontWeight.w100,
    fontSize: 60,
    letterSpacing: (-0.5),
  );
  static const subtitle1 = TextStyle(
    fontFamily: 'SFCompactRounded',
    fontWeight: FontWeight.w500,
    fontSize: 16,
    letterSpacing: 0,
  );
  static const subtitle2 = TextStyle(
    fontFamily: 'SFCompactRounded',
    fontWeight: FontWeight.w500,
    fontSize: 14,
    letterSpacing: 0.1,
  );
  static const bodyText1 = TextStyle(
    fontFamily: 'SFCompactRounded',
    fontWeight: FontWeight.bold,
    fontSize: 18,
    color: AppColor.onSecondary,
    letterSpacing: 0,
  );
  static const bodyText2 = TextStyle(
    fontFamily: 'SFCompactRounded',
    fontWeight: FontWeight.bold,
    fontSize: 14,
    letterSpacing: 0.25,
  );
  static const button = TextStyle(
    fontFamily: 'SFCompactRounded',
    fontWeight: FontWeight.w500,
    fontSize: 14,
    letterSpacing: 1.25,
  );
  static const caption = TextStyle(
    fontFamily: 'SFCompactRounded',
    fontWeight: FontWeight.bold,
    fontSize: 12,
    letterSpacing: 0.15,
  );
  static const overline = TextStyle(
    fontFamily: 'SFCompactRounded',
    fontWeight: FontWeight.w200,
    fontSize: 12,
    letterSpacing: 1,
  );
}
