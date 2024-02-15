
import 'package:freezed_annotation/freezed_annotation.dart';

part 'database_failures.freezed.dart';

@freezed
class DataBaseFailure with _$DataBaseFailure {
  const factory DataBaseFailure.nameAlreadyInUse() = _NameAlreadyInUse;
  const factory DataBaseFailure.emptyPlayListName() = _EmptyPlayListName;
  const factory DataBaseFailure.dataBaseFailure() = _DataBaseFailure;
  const factory DataBaseFailure.deleteFailure() = _DeleteFailure;
    const factory DataBaseFailure.audioExist() = _AudioExist;
}