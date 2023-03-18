import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:puppers_mobile/utilities/localization/en.dart';
import 'package:puppers_mobile/utilities/localization/es.dart';
import 'package:puppers_mobile/utilities/localization/fr.dart';

@immutable
class AppTranslations extends Translations {
  @override
  Map<String, Map<String, String>> get keys => <String, Map<String, String>>{
        'en': englishStrings,
        'fr': frenchStrings,
        'es': spanishStrings,
      };
}
