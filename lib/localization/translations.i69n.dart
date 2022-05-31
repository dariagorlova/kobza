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
  String get mainPageTitle => "Kobza";
  String get everyDayWordButtonTitle => "daily";
  String get randomWordButtonTitle => "random";
  String get letterJ => "J";
  String get letterC => "C";
  String get letterU => "U";
  String get letterK => "K";
  String get letterE => "E";
  String get letterN => "N";
  String get letterG => "G";
  String get letterG2 => "G2";
  String get letterSH => "SH";
  String get letterSHCH => "SHCH";
  String get letterZ => "Z";
  String get letterH => "H";
  String get letterF => "F";
  String get letterI => "I";
  String get letterJI => "JI";
  String get letterV => "B";
  String get letterA => "A";
  String get letterP => "P";
  String get letterR => "R";
  String get letterO => "O";
  String get letterL => "L";
  String get letterD => "D";
  String get letterZH => "ZH";
  String get letterJE => "JE";
  String get letterJA => "JA";
  String get letterCH => "CH";
  String get letterS => "S";
  String get letterM => "M";
  String get letterY => "Y";
  String get letterT => "T";
  String get letterSoftSign => "W";
  String get letterB => "B";
  String get letterJU => "JU";
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
      case 'letterJ':
        return letterJ;
      case 'letterC':
        return letterC;
      case 'letterU':
        return letterU;
      case 'letterK':
        return letterK;
      case 'letterE':
        return letterE;
      case 'letterN':
        return letterN;
      case 'letterG':
        return letterG;
      case 'letterG2':
        return letterG2;
      case 'letterSH':
        return letterSH;
      case 'letterSHCH':
        return letterSHCH;
      case 'letterZ':
        return letterZ;
      case 'letterH':
        return letterH;
      case 'letterF':
        return letterF;
      case 'letterI':
        return letterI;
      case 'letterJI':
        return letterJI;
      case 'letterV':
        return letterV;
      case 'letterA':
        return letterA;
      case 'letterP':
        return letterP;
      case 'letterR':
        return letterR;
      case 'letterO':
        return letterO;
      case 'letterL':
        return letterL;
      case 'letterD':
        return letterD;
      case 'letterZH':
        return letterZH;
      case 'letterJE':
        return letterJE;
      case 'letterJA':
        return letterJA;
      case 'letterCH':
        return letterCH;
      case 'letterS':
        return letterS;
      case 'letterM':
        return letterM;
      case 'letterY':
        return letterY;
      case 'letterT':
        return letterT;
      case 'letterSoftSign':
        return letterSoftSign;
      case 'letterB':
        return letterB;
      case 'letterJU':
        return letterJU;
      default:
        return key;
    }
  }
}
