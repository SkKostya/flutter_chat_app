import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AppModel extends ChangeNotifier {
  var _locale = const Locale('en');
  Locale get locale => _locale;
  void setLocale(Locale newLocale) {
    _locale = newLocale;
    notifyListeners();
  }

  var _theme = ThemeMode.light;
  ThemeMode get theme => _theme;
  void setTheme(ThemeMode newTheme) {
    _theme = newTheme;
    notifyListeners();
  }
}
