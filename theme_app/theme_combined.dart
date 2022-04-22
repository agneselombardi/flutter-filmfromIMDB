import 'package:flutter/material.dart';
import 'set_text_color/set_color.dart';
import 'set_text_color/set_text.dart';
import 'app_color_scheme.dart';
import 'app_text_scheme.dart';

class AppTheme {
  static ThemeData lightTheme() { return ThemeData(
    appBarTheme: const AppBarTheme(
      // Come suggerito dal nome, qui si definisce lo stile ereditato da tutte le AppBar presenti nell'app
      elevation: 0,
      backgroundColor: AppColor.surface,
      actionsIconTheme: IconThemeData(
        color: AppColor.primary,
        size: 32,
      ),
      titleTextStyle: AppTextTheme.bodyText1,
      iconTheme: IconThemeData(
        // "Mai giudicare un libro dalla copertina" il nome può ingannare, l'iconTheme non fa rifetimento alle icone dell'app ma .... CERCATE NELLA DOCUMENTAZIONE ^_^ e fatemi sapere
        color: AppColor.primary,
        size: 32,
      ),
    ),
    brightness: Brightness.light,
    colorScheme: appColorScheme,
    textTheme: appTextTheme,
  );
  }
}
