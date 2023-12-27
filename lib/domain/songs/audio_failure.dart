import 'package:freezed_annotation/freezed_annotation.dart';
part 'audio_failure.freezed.dart';

@freezed
class AudiFailure with _$AudiFailure{
  const factory AudiFailure.platFormFailure() = _PlatFormFailure;
  const factory AudiFailure.audioNotFound() = _AudioNotFound;
}