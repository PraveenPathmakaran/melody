import 'package:freezed_annotation/freezed_annotation.dart';
part 'value_failures.freezed.dart';


@freezed
class ValueFailure<T> with _$ValueFailure{
  const factory ValueFailure.empty({required T failedValue}) = Empty;
}