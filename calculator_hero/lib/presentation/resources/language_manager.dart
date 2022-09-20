enum LanguageType { ENGLISH, SPANISH }

const String ENGLISH = "en";
const String SPANISH = "es";

extension LanguageTypeExtension on LanguageType {
  String getValue() {
    switch (this) {
      case LanguageType.ENGLISH:
        return ENGLISH;
      case LanguageType.SPANISH:
        return SPANISH;
    }
  }
}
