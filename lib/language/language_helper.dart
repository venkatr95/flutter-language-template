import 'dart:ui';

class LanguageHelper {
  final String name;
  final String flag;
  final String languageCode;

  LanguageHelper(this.name, this.flag, this.languageCode);

  static List<LanguageHelper> languageList() {
    return <LanguageHelper>[
      LanguageHelper("English", "US", "en"),
      LanguageHelper("हिंदी", "HI", "hi"),
      LanguageHelper("Español", "ES", "es"),
      LanguageHelper("Deutsch", "DE", "de"),
    ];
  }

  static Locale changeLanguage(LanguageHelper language, context) {
    Locale _a;
    switch (language.languageCode) {
      case english: // here ENGLISH is a constant that I've created in another file called `constant.dart` file and same for other languages
        _a = Locale(language.languageCode, "US");

        break;
      case hindi:
        _a = Locale(language.languageCode, "HI");

        break;
      case spanish:
        _a = Locale(language.languageCode, "ES");

        break;
      case german:
        _a = Locale(language.languageCode, "DE");

        break;
      default:
        _a = Locale(language.languageCode, 'US');
    }
    return _a;
  }

  static const String english = "en";
  static const String hindi = "hi";
  static const String spanish = "es";
  static const String german = "de";
}
