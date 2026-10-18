import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

import 'app_localizations.dart';

/// Keep app translations (including Maltese) even when Flutter does not ship
/// that language for its framework controls. Only those controls use English.
const appLocalizationDelegates = <LocalizationsDelegate<dynamic>>[
  AppLocalizations.delegate,
  _FrameworkFallback<MaterialLocalizations>(
    GlobalMaterialLocalizations.delegate,
  ),
  _FrameworkFallback<WidgetsLocalizations>(GlobalWidgetsLocalizations.delegate),
  _FrameworkFallback<CupertinoLocalizations>(
    GlobalCupertinoLocalizations.delegate,
  ),
];

class _FrameworkFallback<T> extends LocalizationsDelegate<T> {
  const _FrameworkFallback(this.delegate);

  final LocalizationsDelegate<T> delegate;

  @override
  bool isSupported(Locale locale) =>
      delegate.isSupported(locale) ||
      AppLocalizations.delegate.isSupported(locale);

  @override
  Future<T> load(Locale locale) =>
      delegate.load(delegate.isSupported(locale) ? locale : const Locale('en'));

  @override
  bool shouldReload(LocalizationsDelegate<T> old) => false;
}
