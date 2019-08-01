import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:translation_generator/message.dart';

part 'localizations.g.dart';

@Message('applicationTitle', 'Flutter Navigation Demo')
class AppLocalizations extends _AppLocalizations {
  static AppLocalizations of(BuildContext context) =>
      Localizations.of<AppLocalizations>(context, AppLocalizations);
}
