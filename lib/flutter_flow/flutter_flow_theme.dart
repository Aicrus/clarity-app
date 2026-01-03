// ignore_for_file: overridden_fields, annotate_overrides

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:shared_preferences/shared_preferences.dart';

const kThemeModeKey = '__theme_mode__';
SharedPreferences? _prefs;

abstract class FlutterFlowTheme {
  static Future initialize() async =>
      _prefs = await SharedPreferences.getInstance();
  static ThemeMode get themeMode {
    final darkMode = _prefs?.getBool(kThemeModeKey);
    return darkMode == null
        ? ThemeMode.system
        : darkMode
            ? ThemeMode.dark
            : ThemeMode.light;
  }

  static void saveThemeMode(ThemeMode mode) => mode == ThemeMode.system
      ? _prefs?.remove(kThemeModeKey)
      : _prefs?.setBool(kThemeModeKey, mode == ThemeMode.dark);

  static FlutterFlowTheme of(BuildContext context) {
    return Theme.of(context).brightness == Brightness.dark
        ? DarkModeTheme()
        : LightModeTheme();
  }

  @Deprecated('Use primary instead')
  Color get primaryColor => primary;
  @Deprecated('Use secondary instead')
  Color get secondaryColor => secondary;
  @Deprecated('Use tertiary instead')
  Color get tertiaryColor => tertiary;

  late Color primary;
  late Color secondary;
  late Color tertiary;
  late Color alternate;
  late Color primaryText;
  late Color secondaryText;
  late Color primaryBackground;
  late Color secondaryBackground;
  late Color accent1;
  late Color accent2;
  late Color accent3;
  late Color accent4;
  late Color success;
  late Color warning;
  late Color error;
  late Color info;

  late Color buttonBackGround;
  late Color buttonTextColor;
  late Color topNavBarBGColor;
  late Color topNavBarTextColor;
  late Color clickableTextColor;
  late Color transparentButtonsBG;
  late Color divColor;
  late Color mainBackGroundColor;
  late Color bottomNavbarColorBG;
  late Color titles;
  late Color textInputColor;
  late Color textInputBorderColor;
  late Color textinputBGColor;
  late Color customColor1;
  late Color gradientTop;
  late Color gradientBottom;
  late Color longtextColor;
  late Color subTextColor;
  late Color lessonTitle;
  late Color loginButtonColor;
  late Color logInTextColorButton;
  late Color singUpTextButtonColor;
  late Color typedInpueTextFieldColor;
  late Color checkIconInputTextBox;
  late Color iconsAndToggleButtons;
  late Color audioTeoriaButtonFillColor;
  late Color audioTeoriaButtonBorderColor;
  late Color audioTeoriaTextButtonColor;
  late Color praticaButtonFillColor;
  late Color praticaButtonTextColor;
  late Color corsoDayTextColor;
  late Color appBarIconColor;
  late Color annullaFillColor;
  late Color annullaTextColor;
  late Color freeTrialText;
  late Color settingDarkBG;
  late Color onboardingBt;

  @Deprecated('Use displaySmallFamily instead')
  String get title1Family => displaySmallFamily;
  @Deprecated('Use displaySmall instead')
  TextStyle get title1 => typography.displaySmall;
  @Deprecated('Use headlineMediumFamily instead')
  String get title2Family => typography.headlineMediumFamily;
  @Deprecated('Use headlineMedium instead')
  TextStyle get title2 => typography.headlineMedium;
  @Deprecated('Use headlineSmallFamily instead')
  String get title3Family => typography.headlineSmallFamily;
  @Deprecated('Use headlineSmall instead')
  TextStyle get title3 => typography.headlineSmall;
  @Deprecated('Use titleMediumFamily instead')
  String get subtitle1Family => typography.titleMediumFamily;
  @Deprecated('Use titleMedium instead')
  TextStyle get subtitle1 => typography.titleMedium;
  @Deprecated('Use titleSmallFamily instead')
  String get subtitle2Family => typography.titleSmallFamily;
  @Deprecated('Use titleSmall instead')
  TextStyle get subtitle2 => typography.titleSmall;
  @Deprecated('Use bodyMediumFamily instead')
  String get bodyText1Family => typography.bodyMediumFamily;
  @Deprecated('Use bodyMedium instead')
  TextStyle get bodyText1 => typography.bodyMedium;
  @Deprecated('Use bodySmallFamily instead')
  String get bodyText2Family => typography.bodySmallFamily;
  @Deprecated('Use bodySmall instead')
  TextStyle get bodyText2 => typography.bodySmall;

  String get displayLargeFamily => typography.displayLargeFamily;
  TextStyle get displayLarge => typography.displayLarge;
  String get displayMediumFamily => typography.displayMediumFamily;
  TextStyle get displayMedium => typography.displayMedium;
  String get displaySmallFamily => typography.displaySmallFamily;
  TextStyle get displaySmall => typography.displaySmall;
  String get headlineLargeFamily => typography.headlineLargeFamily;
  TextStyle get headlineLarge => typography.headlineLarge;
  String get headlineMediumFamily => typography.headlineMediumFamily;
  TextStyle get headlineMedium => typography.headlineMedium;
  String get headlineSmallFamily => typography.headlineSmallFamily;
  TextStyle get headlineSmall => typography.headlineSmall;
  String get titleLargeFamily => typography.titleLargeFamily;
  TextStyle get titleLarge => typography.titleLarge;
  String get titleMediumFamily => typography.titleMediumFamily;
  TextStyle get titleMedium => typography.titleMedium;
  String get titleSmallFamily => typography.titleSmallFamily;
  TextStyle get titleSmall => typography.titleSmall;
  String get labelLargeFamily => typography.labelLargeFamily;
  TextStyle get labelLarge => typography.labelLarge;
  String get labelMediumFamily => typography.labelMediumFamily;
  TextStyle get labelMedium => typography.labelMedium;
  String get labelSmallFamily => typography.labelSmallFamily;
  TextStyle get labelSmall => typography.labelSmall;
  String get bodyLargeFamily => typography.bodyLargeFamily;
  TextStyle get bodyLarge => typography.bodyLarge;
  String get bodyMediumFamily => typography.bodyMediumFamily;
  TextStyle get bodyMedium => typography.bodyMedium;
  String get bodySmallFamily => typography.bodySmallFamily;
  TextStyle get bodySmall => typography.bodySmall;

  Typography get typography => ThemeTypography(this);
}

class LightModeTheme extends FlutterFlowTheme {
  @Deprecated('Use primary instead')
  Color get primaryColor => primary;
  @Deprecated('Use secondary instead')
  Color get secondaryColor => secondary;
  @Deprecated('Use tertiary instead')
  Color get tertiaryColor => tertiary;

  late Color primary = const Color(0xFFF6FCFF);
  late Color secondary = const Color(0xD9DFF3FF);
  late Color tertiary = const Color(0xFF65B7EA);
  late Color alternate = const Color(0xFFE0E3E7);
  late Color primaryText = const Color(0xFF3C9BD6);
  late Color secondaryText = const Color(0xFFDEF0FA);
  late Color primaryBackground = const Color(0xFFF1F4F8);
  late Color secondaryBackground = const Color(0xFFFFFFFF);
  late Color accent1 = const Color(0xFFFBBD22);
  late Color accent2 = const Color(0x4D39D2C0);
  late Color accent3 = const Color(0x4DEE8B60);
  late Color accent4 = const Color(0xFFFFFFFF);
  late Color success = const Color(0xFF249689);
  late Color warning = const Color(0xFFF9CF58);
  late Color error = const Color(0xFFCE6477);
  late Color info = const Color(0xFFFFFFFF);

  late Color buttonBackGround = const Color(0xFFDEF0FA);
  late Color buttonTextColor = const Color(0xFF65B7EA);
  late Color topNavBarBGColor = const Color(0xFFF6FCFF);
  late Color topNavBarTextColor = const Color(0xFF3C9BD6);
  late Color clickableTextColor = const Color(0xFF3C9BD6);
  late Color transparentButtonsBG = const Color(0xFFF6FCFF);
  late Color divColor = const Color(0xFF65B7EA);
  late Color mainBackGroundColor = const Color(0xFFF6FCFF);
  late Color bottomNavbarColorBG = const Color(0xD8DFF3FF);
  late Color titles = const Color(0xFF3C9BD6);
  late Color textInputColor = const Color(0x801B385A);
  late Color textInputBorderColor = const Color(0xFF65B7EA);
  late Color textinputBGColor = const Color(0xFFF6FCFF);
  late Color customColor1 = const Color(0xFFD9E978);
  late Color gradientTop = const Color(0xFFECF7FF);
  late Color gradientBottom = const Color(0xFFACCDE5);
  late Color longtextColor = const Color(0xFF1B385A);
  late Color subTextColor = const Color(0xFF4D7C99);
  late Color lessonTitle = const Color(0xFF1B385A);
  late Color loginButtonColor = const Color(0xFF65B7EA);
  late Color logInTextColorButton = const Color(0xFFF6FCFF);
  late Color singUpTextButtonColor = const Color(0xFFFFFFFF);
  late Color typedInpueTextFieldColor = const Color(0xFF1B385A);
  late Color checkIconInputTextBox = const Color(0xFF8AC341);
  late Color iconsAndToggleButtons = const Color(0xFF65B7EA);
  late Color audioTeoriaButtonFillColor = const Color(0xFFF6FCFF);
  late Color audioTeoriaButtonBorderColor = const Color(0xFF65B7EA);
  late Color audioTeoriaTextButtonColor = const Color(0xFF65B7EA);
  late Color praticaButtonFillColor = const Color(0xFF65B7EA);
  late Color praticaButtonTextColor = const Color(0xFFF6FCFF);
  late Color corsoDayTextColor = const Color(0xFF4D7C99);
  late Color appBarIconColor = const Color(0xFF65B7EA);
  late Color annullaFillColor = const Color(0xFFF6FCFF);
  late Color annullaTextColor = const Color(0xFF65B7EA);
  late Color freeTrialText = const Color(0xFF1B385A);
  late Color settingDarkBG = const Color(0xFFFFFFFF);
  late Color onboardingBt = const Color(0xFF65B7EA);
}

abstract class Typography {
  String get displayLargeFamily;
  TextStyle get displayLarge;
  String get displayMediumFamily;
  TextStyle get displayMedium;
  String get displaySmallFamily;
  TextStyle get displaySmall;
  String get headlineLargeFamily;
  TextStyle get headlineLarge;
  String get headlineMediumFamily;
  TextStyle get headlineMedium;
  String get headlineSmallFamily;
  TextStyle get headlineSmall;
  String get titleLargeFamily;
  TextStyle get titleLarge;
  String get titleMediumFamily;
  TextStyle get titleMedium;
  String get titleSmallFamily;
  TextStyle get titleSmall;
  String get labelLargeFamily;
  TextStyle get labelLarge;
  String get labelMediumFamily;
  TextStyle get labelMedium;
  String get labelSmallFamily;
  TextStyle get labelSmall;
  String get bodyLargeFamily;
  TextStyle get bodyLarge;
  String get bodyMediumFamily;
  TextStyle get bodyMedium;
  String get bodySmallFamily;
  TextStyle get bodySmall;
}

class ThemeTypography extends Typography {
  ThemeTypography(this.theme);

  final FlutterFlowTheme theme;

  String get displayLargeFamily => 'Istok Web';
  TextStyle get displayLarge => GoogleFonts.getFont(
        'Istok Web',
        color: theme.primaryText,
        fontWeight: FontWeight.normal,
        fontSize: 64.0,
      );
  String get displayMediumFamily => 'Istok Web';
  TextStyle get displayMedium => GoogleFonts.getFont(
        'Istok Web',
        color: theme.primaryText,
        fontWeight: FontWeight.normal,
        fontSize: 44.0,
      );
  String get displaySmallFamily => 'Istok Web';
  TextStyle get displaySmall => GoogleFonts.getFont(
        'Istok Web',
        color: theme.primaryText,
        fontWeight: FontWeight.w600,
        fontSize: 36.0,
      );
  String get headlineLargeFamily => 'Istok Web';
  TextStyle get headlineLarge => GoogleFonts.getFont(
        'Istok Web',
        color: theme.primaryText,
        fontWeight: FontWeight.w600,
        fontSize: 32.0,
      );
  String get headlineMediumFamily => 'Istok Web';
  TextStyle get headlineMedium => GoogleFonts.getFont(
        'Istok Web',
        color: theme.secondaryText,
        fontWeight: FontWeight.bold,
        fontSize: 24.0,
      );
  String get headlineSmallFamily => 'Istok Web';
  TextStyle get headlineSmall => GoogleFonts.getFont(
        'Istok Web',
        color: theme.primaryText,
        fontWeight: FontWeight.w500,
        fontSize: 24.0,
      );
  String get titleLargeFamily => 'Istok Web';
  TextStyle get titleLarge => GoogleFonts.getFont(
        'Istok Web',
        color: theme.secondaryText,
        fontWeight: FontWeight.bold,
        fontSize: 24.0,
      );
  String get titleMediumFamily => 'Istok Web';
  TextStyle get titleMedium => GoogleFonts.getFont(
        'Istok Web',
        color: theme.info,
        fontWeight: FontWeight.bold,
        fontSize: 24.0,
      );
  String get titleSmallFamily => 'Istok Web';
  TextStyle get titleSmall => GoogleFonts.getFont(
        'Istok Web',
        color: theme.primaryText,
        fontWeight: FontWeight.bold,
        fontSize: 20.0,
      );
  String get labelLargeFamily => 'Istok Web';
  TextStyle get labelLarge => GoogleFonts.getFont(
        'Istok Web',
        color: theme.secondaryText,
        fontWeight: FontWeight.normal,
        fontSize: 16.0,
      );
  String get labelMediumFamily => 'Istok Web';
  TextStyle get labelMedium => GoogleFonts.getFont(
        'Istok Web',
        color: theme.secondaryText,
        fontWeight: FontWeight.normal,
        fontSize: 14.0,
      );
  String get labelSmallFamily => 'Istok Web';
  TextStyle get labelSmall => GoogleFonts.getFont(
        'Istok Web',
        color: theme.secondaryText,
        fontWeight: FontWeight.normal,
        fontSize: 12.0,
      );
  String get bodyLargeFamily => 'Istok Web';
  TextStyle get bodyLarge => GoogleFonts.getFont(
        'Istok Web',
        color: theme.primaryText,
        fontWeight: FontWeight.normal,
        fontSize: 16.0,
      );
  String get bodyMediumFamily => 'Istok Web';
  TextStyle get bodyMedium => GoogleFonts.getFont(
        'Istok Web',
        color: theme.primaryText,
        fontWeight: FontWeight.normal,
        fontSize: 14.0,
      );
  String get bodySmallFamily => 'Istok Web';
  TextStyle get bodySmall => GoogleFonts.getFont(
        'Istok Web',
        color: theme.primaryText,
        fontWeight: FontWeight.normal,
        fontSize: 12.0,
      );
}

class DarkModeTheme extends FlutterFlowTheme {
  @Deprecated('Use primary instead')
  Color get primaryColor => primary;
  @Deprecated('Use secondary instead')
  Color get secondaryColor => secondary;
  @Deprecated('Use tertiary instead')
  Color get tertiaryColor => tertiary;

  late Color primary = const Color(0xFF214A7A);
  late Color secondary = const Color(0xBF1770A7);
  late Color tertiary = const Color(0xFF1A3351);
  late Color alternate = const Color(0xFF262D34);
  late Color primaryText = const Color(0xFFFFFFFF);
  late Color secondaryText = const Color(0xFF65B7EA);
  late Color primaryBackground = const Color(0xFF2860A2);
  late Color secondaryBackground = const Color(0xFFFFFFFF);
  late Color accent1 = const Color(0xFFFBBD22);
  late Color accent2 = const Color(0x4D39D2C0);
  late Color accent3 = const Color(0x4DEE8B60);
  late Color accent4 = const Color(0xB2262D34);
  late Color success = const Color(0xFF249689);
  late Color warning = const Color(0xFFF9CF58);
  late Color error = const Color(0xFFCE6477);
  late Color info = const Color(0xFFFFFFFF);

  late Color buttonBackGround = const Color(0xFF9AD4F9);
  late Color buttonTextColor = const Color(0xFF214A7A);
  late Color topNavBarBGColor = const Color(0xFF214A7A);
  late Color topNavBarTextColor = const Color(0xFF9AD4F9);
  late Color clickableTextColor = const Color(0xFF9AD4F9);
  late Color transparentButtonsBG = const Color(0xFF214A7A);
  late Color divColor = const Color(0xFF65B7EA);
  late Color mainBackGroundColor = const Color(0xFF2860A2);
  late Color bottomNavbarColorBG = const Color(0xBF65B7EA);
  late Color titles = const Color(0xFF9AD4F9);
  late Color textInputColor = const Color(0x7FCBE3F2);
  late Color textInputBorderColor = const Color(0xFF9AD4F9);
  late Color textinputBGColor = const Color(0xFF214A7A);
  late Color customColor1 = const Color(0xFFD9E978);
  late Color gradientTop = const Color(0xFF2860A2);
  late Color gradientBottom = const Color(0xFF153D6D);
  late Color longtextColor = const Color(0xFFCBE3F2);
  late Color subTextColor = const Color(0xFFA3BCCC);
  late Color lessonTitle = const Color(0xFFCBE3F2);
  late Color loginButtonColor = const Color(0xFF9AD4F9);
  late Color logInTextColorButton = const Color(0xFF214A7A);
  late Color singUpTextButtonColor = const Color(0xFFFFFFFF);
  late Color typedInpueTextFieldColor = const Color(0xFFCBE3F2);
  late Color checkIconInputTextBox = const Color(0xFF8AC341);
  late Color iconsAndToggleButtons = const Color(0xFF9AD4F9);
  late Color audioTeoriaButtonFillColor = const Color(0xFF214A7A);
  late Color audioTeoriaButtonBorderColor = const Color(0xFF9AD4F9);
  late Color audioTeoriaTextButtonColor = const Color(0xFF9AD4F9);
  late Color praticaButtonFillColor = const Color(0xFF9AD4F9);
  late Color praticaButtonTextColor = const Color(0xFF214A7A);
  late Color corsoDayTextColor = const Color(0xFFD9D9D9);
  late Color appBarIconColor = const Color(0xFF9AD4F9);
  late Color annullaFillColor = const Color(0x00F6FCFF);
  late Color annullaTextColor = const Color(0xFF65B7EA);
  late Color freeTrialText = const Color(0xFFCBE3F2);
  late Color settingDarkBG = const Color(0xFF2860A2);
  late Color onboardingBt = const Color(0xFF9AD4F9);
}

extension TextStyleHelper on TextStyle {
  TextStyle override({
    String? fontFamily,
    Color? color,
    double? fontSize,
    FontWeight? fontWeight,
    double? letterSpacing,
    FontStyle? fontStyle,
    bool useGoogleFonts = true,
    TextDecoration? decoration,
    double? lineHeight,
  }) =>
      useGoogleFonts
          ? GoogleFonts.getFont(
              fontFamily!,
              color: color ?? this.color,
              fontSize: fontSize ?? this.fontSize,
              letterSpacing: letterSpacing ?? this.letterSpacing,
              fontWeight: fontWeight ?? this.fontWeight,
              fontStyle: fontStyle ?? this.fontStyle,
              decoration: decoration,
              height: lineHeight,
            )
          : copyWith(
              fontFamily: fontFamily,
              color: color,
              fontSize: fontSize,
              letterSpacing: letterSpacing,
              fontWeight: fontWeight,
              fontStyle: fontStyle,
              decoration: decoration,
              height: lineHeight,
            );
}
