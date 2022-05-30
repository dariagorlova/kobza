// ignore_for_file: unused_element, unused_field, camel_case_types, annotate_overrides, prefer_single_quotes
// GENERATED FILE, do not edit!
import 'package:i69n/i69n.dart' as i69n;

String get _languageCode => 'en';
String get _localeName => 'en';

String _plural(int count,
        {String? zero,
        String? one,
        String? two,
        String? few,
        String? many,
        String? other}) =>
    i69n.plural(count, _languageCode,
        zero: zero, one: one, two: two, few: few, many: many, other: other);
String _ordinal(int count,
        {String? zero,
        String? one,
        String? two,
        String? few,
        String? many,
        String? other}) =>
    i69n.ordinal(count, _languageCode,
        zero: zero, one: one, two: two, few: few, many: many, other: other);
String _cardinal(int count,
        {String? zero,
        String? one,
        String? two,
        String? few,
        String? many,
        String? other}) =>
    i69n.cardinal(count, _languageCode,
        zero: zero, one: one, two: two, few: few, many: many, other: other);

class Translations implements i69n.I69nMessageBundle {
  const Translations();
  String get mainPageTitle => "Кобза";
  String get everyDayWordButtonTitle => "щодня";
  String get randomWordButtonTitle => "абищо";
  String get letterK => "К";
  String get letterO => "О";
  String get letterB => "Б";
  String get letterZ => "З";
  String get letterA => "А";
  Object operator [](String key) {
    var index = key.indexOf('.');
    if (index > 0) {
      return (this[key.substring(0, index)]
          as i69n.I69nMessageBundle)[key.substring(index + 1)];
    }
    switch (key) {
      case 'mainPageTitle':
        return mainPageTitle;
      case 'everyDayWordButtonTitle':
        return everyDayWordButtonTitle;
      case 'randomWordButtonTitle':
        return randomWordButtonTitle;
      case 'letterK':
        return letterK;
      case 'letterO':
        return letterO;
      case 'letterB':
        return letterB;
      case 'letterZ':
        return letterZ;
      case 'letterA':
        return letterA;
      default:
        return key;
    }
  }
}
