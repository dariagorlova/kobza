import 'package:freezed_annotation/freezed_annotation.dart';

part 'one_letter.freezed.dart';

@freezed
class OneLetter with _$OneLetter {
  const factory OneLetter({
    required String letter,
    required int letterState, // 0-initial,1-almostCorrectly,2-correctly,3-wrong
  }) = _OneLetter;
}
