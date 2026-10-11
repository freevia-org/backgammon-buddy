import 'package:flutter/widgets.dart';

import 'app_localizations.dart';
import 'app_localizations_en.dart';

/// Reads the active app strings, falling back to English when a screen is
/// hosted without the app delegate (for example, in an isolated preview or
/// embedder). The application root always registers the generated delegates.
AppLocalizations appLocalizationsOf(BuildContext context) =>
    Localizations.of<AppLocalizations>(context, AppLocalizations) ??
    AppLocalizationsEn();
