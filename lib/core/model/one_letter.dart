import 'package:freezed_annotation/freezed_annotation.dart';

part 'one_letter.freezed.dart';

enum LetterState { initial, almostCorrectly, correctly, wrong }

@freezed
class OneLetter with _$OneLetter {
  const factory OneLetter({
    @Default('') String letter,
    @Default(LetterState.initial) LetterState letterState,
  }) = _OneLetter;
}
