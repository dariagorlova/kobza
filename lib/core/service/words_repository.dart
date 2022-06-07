import 'package:injectable/injectable.dart';

@lazySingleton
class WordsRepository {
  final List<String> _words = [
    'ВЕСНА',
    'ПІСНЯ',
    'ВІТЕР',
    'СОНЦЕ',
    'ЖІНКА',
    'ЖУЙКА',
    'ЖУЙКА',
  ];

  List<String> getAllWords() => _words;
}
