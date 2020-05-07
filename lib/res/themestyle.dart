import 'package:flutter/material.dart';

class ThemeStyle {
  ///光亮模式
  static final lightTheme = ThemeData.light().copyWith(
    tabBarTheme: TabBarTheme(labelColor: const Color(0xFF000000)),
    backgroundColor: const Color(0xFFFFFFFF),
    cardColor: const Color(0xFFFFFFFF),
    bottomAppBarColor: const Color.fromRGBO(45, 45, 48, 1),
    primaryColorLight: const Color(0xFFF5F5F5),
    primaryColorDark: const Color(0xFFEEEEEE),
    textTheme: TextTheme(
      title: TextStyle(
        fontSize: 17,
        color: Color(0xFF323232),
        fontWeight: FontWeight.w600,
      ),
      body1: TextStyle(
        fontSize: 14,
        color: Color(0xFF323232),
        fontWeight: FontWeight.w400,
      ),
      body2: TextStyle(
        fontSize: 14,
        color: Color(0xFF2599f9),
        fontWeight: FontWeight.w400,
      ),
      display1: TextStyle(
        // label标签提示效果,或者提示性文字
        fontSize: 12,
        color: Color(0xFF989898),
        fontWeight: FontWeight.w400,
      ),
      display2: TextStyle(
        // label标签提示效果,或者提示性文字
        fontSize: 14,
        color: Color(0xFF989898),
        fontWeight: FontWeight.w400,
      ),
      button: TextStyle(
        // 按钮样式
        color: Color(0xFFF85D5A),
        fontSize: 15,
        fontWeight: FontWeight.w500,
      ),
    ),
  );

  ///暗黑模式
  static final darkTheme = ThemeData.dark().copyWith(
    tabBarTheme: TabBarTheme(labelColor: const Color(0xFFFFFFFF)),
    backgroundColor: const Color(0xFF303030),
    bottomAppBarColor: const Color(0xFF191919),
    cardColor: const Color(0xFF333333),
    primaryColorLight: const Color(0xFF505050),
    primaryColorDark: const Color(0xFF404040),
    textTheme: TextTheme(
      title: TextStyle(
        fontSize: 17,
        color: Color(0xFF323232),
        fontWeight: FontWeight.w600,
      ),
      body1: TextStyle(
        fontSize: 14,
        color: Color(0xFF323232),
        fontWeight: FontWeight.w400,
      ),
      body2: TextStyle(
        fontSize: 14,
        color: Color(0xFF2599f9),
        fontWeight: FontWeight.w400,
      ),
      display1: TextStyle(
        // label标签提示效果,或者提示性文字
        fontSize: 12,
        color: Color(0xFF989898),
        fontWeight: FontWeight.w400,
      ),
      display2: TextStyle(
        // label标签提示效果,或者提示性文字
        fontSize: 14,
        color: Color(0xFF989898),
        fontWeight: FontWeight.w400,
      ),
      button: TextStyle(
        // 按钮样式
        color: Color(0xFFF85D5A),
        fontSize: 15,
        fontWeight: FontWeight.w500,
      ),
    ),
  );
  static MediaQueryData _mediaQuery;
  static ThemeData theme;

  static ThemeData getTheme(BuildContext context) {
    _mediaQuery = MediaQuery.of(context);
    theme = _mediaQuery.platformBrightness == Brightness.light
        ? lightTheme
        : darkTheme;
    return theme;
  }
}
