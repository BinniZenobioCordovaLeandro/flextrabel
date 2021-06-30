import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class LightTheme {
  ThemeData lightTheme = new ThemeData.light();

  LightTheme() {
    this.lightTheme = ThemeData.light().copyWith(
      brightness: Brightness.light,
      scaffoldBackgroundColor: Colors.grey[100],
      toggleableActiveColor: Color(0xFF04CCCC),
      secondaryHeaderColor: Colors.red,
      backgroundColor: Colors.grey[100],
      iconTheme: IconThemeData(color: Colors.grey),
      timePickerTheme: TimePickerThemeData(
        backgroundColor: Color(0xFF04CCCC),
      ),
      appBarTheme: AppBarTheme(
        backgroundColor: Colors.white,
        iconTheme: IconThemeData(color: Colors.black),
        actionsIconTheme: IconThemeData(color: Colors.black),
        systemOverlayStyle:
            SystemUiOverlayStyle(statusBarColor: Color(0xFFe0e0e0)),
      ),
      bottomSheetTheme: BottomSheetThemeData(
        backgroundColor: Colors.white,
        modalBackgroundColor: Colors.white,
      ),
      cardTheme: CardTheme(
        color: Colors.white,
        elevation: 2,
        shadowColor: Color.fromRGBO(242, 242, 242, 0.88),
      ),
      buttonTheme: ButtonThemeData(
        textTheme: ButtonTextTheme.accent,
        colorScheme: ColorScheme(
          primary: Color(0xFF04CCCC),
          primaryVariant: Color(0xFF04CCCC),
          secondary: Color(0xFF04CCCC),
          secondaryVariant: Color(0xFF04CCCC),
          surface: Color(0xFF04CCCC),
          background: Color(0xFF04CCCC),
          error: Colors.red,
          onPrimary: Color(0xFF04CCCC),
          onSecondary: Color(0xFF04CCCC),
          onSurface: Color(0xFF04CCCC),
          onBackground: Color(0xFF04CCCC),
          onError: Colors.red,
          brightness: Brightness.light,
        ),
        disabledColor: Colors.grey,
      ),
      floatingActionButtonTheme: FloatingActionButtonThemeData(
        foregroundColor: Colors.white,
        backgroundColor: Color(0xFF04CCCC),
        splashColor: Colors.transparent,
      ),
      bottomNavigationBarTheme: BottomNavigationBarThemeData(
        backgroundColor: Colors.white,
        selectedItemColor: Color(0xFF04CCCC),
      ),
      primaryColor: Color(0xFF04CCCC),
      accentColor: Color(0xFF04CCCC),
      shadowColor: Color(0xFF04CCCC),
      colorScheme: ColorScheme(
        primary: Color(0xFF04CCCC),
        primaryVariant: Color(0xFF04CCCC),
        secondary: Color(0xFF04CCCC),
        secondaryVariant: Color(0xFF04CCCC),
        surface: Color(0xFF04CCCC),
        background: Color(0xFF04CCCC),
        error: Color(0xFF04CCCC),
        onPrimary: Colors.white,
        onSecondary: Color(0xFF04CCCC),
        onSurface: Colors.black,
        onBackground: Color(0xFF04CCCC),
        onError: Colors.red,
        brightness: Brightness.light,
      ),
      primaryColorLight: Color(0xFF04CCCC),
      primaryColorDark: Color(0xFF04CCCC),
      elevatedButtonTheme: ElevatedButtonThemeData(
          style: ButtonStyle(
        minimumSize: MaterialStateProperty.resolveWith<Size>(
          (Set<MaterialState> states) {
            if (states.contains(MaterialState.disabled))
              return Size(double.infinity, 50.0);
            if (states.contains(MaterialState.pressed))
              return Size(double.infinity, 50.0);
            return Size(double.infinity, 50.0);
          },
        ),
        backgroundColor: MaterialStateProperty.resolveWith<Color>(
            (Set<MaterialState> states) {
          if (states.contains(MaterialState.disabled)) return Colors.grey;
          if (states.contains(MaterialState.error)) return Colors.yellow;
          if (states.contains(MaterialState.pressed)) return Color(0xFF04CCCC);
          return Color(0xFF04CCCC);
        }),
        foregroundColor: MaterialStateProperty.resolveWith<Color>(
            (Set<MaterialState> states) {
          if (states.contains(MaterialState.disabled)) return Colors.white;
          if (states.contains(MaterialState.error)) return Colors.black;
          return Colors.white; // Defer to the widget's default.
        }),
      )),
      textButtonTheme: TextButtonThemeData(
          style: ButtonStyle(
        minimumSize: MaterialStateProperty.resolveWith<Size>(
          (Set<MaterialState> states) {
            if (states.contains(MaterialState.disabled))
              return Size(double.infinity, 50.0);
            if (states.contains(MaterialState.pressed))
              return Size(double.infinity, 50.0);
            return Size(double.infinity, 50.0);
          },
        ),
        overlayColor: MaterialStateColor.resolveWith(
            (states) => Color.fromRGBO(85, 184, 73, 0.15)),
        backgroundColor: MaterialStateProperty.resolveWith<Color>(
            (Set<MaterialState> states) {
          if (states.contains(MaterialState.disabled))
            return Colors.transparent;
          // if (states.contains(MaterialState.pressed))
          //   return  Color(0xFF04CCCC);
          return Colors.transparent;
        }),
        foregroundColor: MaterialStateProperty.resolveWith<Color>(
            (Set<MaterialState> states) {
          if (states.contains(MaterialState.disabled)) return Color(0xFF04CCCC);
          return Color(0xFF04CCCC); // Defer to the widget's default.
        }),
      )),
      radioTheme: RadioThemeData(
        fillColor: MaterialStateProperty.resolveWith<Color>(
            (Set<MaterialState> states) {
          if (states.contains(MaterialState.selected)) return Color(0xFF04CCCC);
          return Colors.grey;
        }),
        materialTapTargetSize: MaterialTapTargetSize.padded,
      ),
      inputDecorationTheme: InputDecorationTheme(
        border: OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(4)),
          borderSide: BorderSide(color: Colors.grey, width: 1),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(4)),
          borderSide: BorderSide(color: Color(0xFF04CCCC), width: 1),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(4)),
          borderSide: BorderSide(color: Colors.grey, width: 1),
        ),
        errorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(4)),
          borderSide: BorderSide(color: Colors.red, width: 1),
        ),
        disabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(4)),
          borderSide: BorderSide(color: Colors.grey, width: 1),
        ),
        hintStyle: TextStyle(color: Colors.red),
        alignLabelWithHint: true,
        suffixStyle: TextStyle(color: Colors.grey),
        filled: true,
      ),
      outlinedButtonTheme: OutlinedButtonThemeData(
          style: ButtonStyle(
        minimumSize: MaterialStateProperty.resolveWith<Size>(
          (Set<MaterialState> states) {
            if (states.contains(MaterialState.disabled))
              return Size(double.infinity, 50.0);
            if (states.contains(MaterialState.pressed))
              return Size(double.infinity, 50.0);
            return Size(double.infinity, 50.0);
          },
        ),
        overlayColor: MaterialStateColor.resolveWith(
            (states) => Color.fromRGBO(85, 184, 73, 0.15)),
        backgroundColor: MaterialStateProperty.resolveWith<Color>(
            (Set<MaterialState> states) {
          if (states.contains(MaterialState.disabled)) return Color(0xFF04CCCC);
          // if (states.contains(MaterialState.pressed))
          //   return Color(0xFF04CCCC);
          return Colors.transparent;
        }),
        foregroundColor: MaterialStateProperty.resolveWith<Color>(
            (Set<MaterialState> states) {
          if (states.contains(MaterialState.disabled)) return Color(0xFF04CCCC);
          return Color(0xFF04CCCC); // Defer to the widget's default.
        }),
      )),
      textTheme: TextTheme(
        headline1: TextStyle(
          color: Colors.black87,
          fontFamily: 'SFProDisplay',
        ),
        headline2: TextStyle(
          color: Colors.black87,
          fontFamily: 'SFProDisplay',
        ),
        headline3: TextStyle(
          color: Colors.black87,
          fontFamily: 'SFProDisplay',
        ),
        headline4: TextStyle(
          color: Colors.black87,
          fontFamily: 'SFProDisplay',
        ),
        headline5: TextStyle(
          color: Colors.black87,
          fontFamily: 'SFProDisplay',
        ),
        headline6: TextStyle(
          color: Colors.black87,
          fontFamily: 'SFProDisplay',
        ),
        subtitle1: TextStyle(
          color: Colors.black87,
          fontFamily: 'SFProDisplay',
        ),
        subtitle2: TextStyle(
          color: Colors.black87,
          fontFamily: 'SFProDisplay',
        ),
        bodyText1: TextStyle(
          color: Colors.black87,
          fontFamily: 'SFProDisplay',
        ),
        bodyText2: TextStyle(
          color: Colors.black87,
          fontFamily: 'SFProDisplay',
        ),
        button: TextStyle(
          color: Colors.black87,
          fontFamily: 'SFProDisplay',
        ),
        caption: TextStyle(
          color: Colors.black87,
          fontFamily: 'SFProDisplay',
        ),
        overline: TextStyle(
          color: Colors.white,
          fontFamily: 'SFProDisplay',
        ),
      ),
    );
  }

  get() {
    return this.lightTheme;
  }
}
