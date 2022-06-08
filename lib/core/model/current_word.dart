import 'package:freezed_annotation/freezed_annotation.dart';

part 'current_word.freezed.dart';

@freezed
class CurrentWord with _$CurrentWord {
  const factory CurrentWord({
    required String word,
  }) = _CurrentWord;
}
