import 'package:kobza/core/service/words_repository.dart';
import 'package:mocktail/mocktail.dart';

class MockWordsRepository extends Mock implements WordsRepository {}

WordsRepository getWordsRepository() {
  final mock = MockWordsRepository();
  when(mock.getAllWords).thenReturn([
    'кобза',
    'вітер',
  ]);
  when(mock.getAllKnownWords).thenReturn([
    'кобза',
    'вітер',
  ]);
  return mock;
}
