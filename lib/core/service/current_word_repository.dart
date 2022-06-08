import 'dart:math';
import 'package:injectable/injectable.dart';
import 'package:kobza/core/service/words_repository.dart';

@injectable
class CurrentWordRepository {
  CurrentWordRepository(
    this.allWords,
    @Named('seed') this.seed,
  );

  final WordsRepository allWords;
  final int seed;

  String getRandomWord() {
    final list = allWords.getAllWords();
    // random from words_repository
    final index = Random(seed).nextInt(list.length);

    return list.elementAt(index);
  }

  String getCurrentWord() {
    return getRandomWord();
    //if (word.word == '') word = const CurrentWord(word: 'КОБЗА');
  }
}
