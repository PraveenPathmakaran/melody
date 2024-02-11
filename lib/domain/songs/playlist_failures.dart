
import 'package:freezed_annotation/freezed_annotation.dart';

part 'playlist_failures.freezed.dart';

@freezed
class PlayListFailure with _$PlayListFailure {
  const factory PlayListFailure.nameAlreadyInUse() = _NameAlreadyInUse;
  const factory PlayListFailure.emptyPlayListName() = _EmptyPlayListName;
  const factory PlayListFailure.dataBaseFailure() = _DataBaseFailure;
  const factory PlayListFailure.deleteFailure() = _DeleteFailure;
}