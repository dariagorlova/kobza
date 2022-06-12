import 'dart:math';
import 'package:injectable/injectable.dart';
import 'package:kobza/core/service/words_repository.dart';

@injectable
class CurrentWordRepository {
  CurrentWordRepository(
    this.allWords,
    @Named('seed') this.seed,
    @Named('randomSeed') this.randomSeed,
  );

  final WordsRepository allWords;
  final int seed;
  final int randomSeed;

  String getCurrentDayWord() => _getWord(seed);
  String getRandomWord() => _getWord(randomSeed);

  String _getWord(int seed) {
    final list = allWords.getAllWords();
    final index = Random(seed).nextInt(list.length);

    return list.elementAt(index);
  }

  bool isWordInRepository(String word) {
    return allWords.getAllWords().contains(word);
  }

  // String getCurrentWord() {
  //   return getRandomWord();
  // }
}
