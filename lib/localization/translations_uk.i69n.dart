// ignore_for_file: unused_element, unused_field, camel_case_types, annotate_overrides, prefer_single_quotes
// GENERATED FILE, do not edit!
import 'package:i69n/i69n.dart' as i69n;
import 'translations.i69n.dart';

String get _languageCode => 'uk';
String get _localeName => 'uk';

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

class Translations_uk extends Translations {
  const Translations_uk();
  String get mainPageTitle => "Кобза";
  String get everyDayWordButtonTitle => "щодня";
  String get randomWordButtonTitle => "абищо";
  String get letterJ => "Й";
  String get letterC => "Ц";
  String get letterU => "У";
  String get letterK => "К";
  String get letterE => "Е";
  String get letterN => "Н";
  String get letterG => "Г";
  String get letterG2 => "Ґ";
  String get letterSH => "Ш";
  String get letterSHCH => "Щ";
  String get letterZ => "З";
  String get letterH => "Х";
  String get letterF => "Ф";
  String get letterI => "І";
  String get letterJI => "Ї";
  String get letterV => "В";
  String get letterA => "А";
  String get letterP => "П";
  String get letterR => "Р";
  String get letterO => "О";
  String get letterL => "Л";
  String get letterD => "Д";
  String get letterZH => "Ж";
  String get letterJE => "Є";
  String get letterJA => "Я";
  String get letterCH => "Ч";
  String get letterS => "С";
  String get letterM => "М";
  String get letterY => "И";
  String get letterT => "Т";
  String get letterSoftSign => "Ь";
  String get letterB => "Б";
  String get letterJU => "Ю";
  String get okButtonTitle => "Ладно";
  String get congratulationtDlgTitle => "Вітаю";
  String get congratulationDlgBody => "Ти вгадав слово!";
  String get notCorrectWordDlgTitle => "Помилка";
  String get notCorrectWordDlgBody => "Цього слова немає у словнику!";
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
      case 'okButtonTitle':
        return okButtonTitle;
      case 'congratulationtDlgTitle':
        return congratulationtDlgTitle;
      case 'congratulationDlgBody':
        return congratulationDlgBody;
      case 'notCorrectWordDlgTitle':
        return notCorrectWordDlgTitle;
      case 'notCorrectWordDlgBody':
        return notCorrectWordDlgBody;
      default:
        return super[key];
    }
  }
}
