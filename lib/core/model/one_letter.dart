import 'package:freezed_annotation/freezed_annotation.dart';

part 'one_letter.freezed.dart';

enum LetterState { initial, almostCorrectly, correctly, wrong }

@freezed
class OneLetter with _$OneLetter {
  const factory OneLetter({
    required String letter,
    required LetterState letterState,
  }) = _OneLetter;
}
