import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:kobza/core/model/one_letter.dart';

part 'one_word.freezed.dart';

@freezed
class OneWord with _$OneWord {
  const factory OneWord({
    required List<OneLetter> letters,
    required bool isHiddenWord,
  }) = _OneWord;
}
