import 'package:freezed_annotation/freezed_annotation.dart';
part 'audio_failure.freezed.dart';

@freezed
class AudioFailure with _$AudioFailure{
  const factory AudioFailure.platFormFailure() = _PlatFormFailure;
   const factory AudioFailure.audioPlayerFailure() = _AudioPlayerFailure;
  const factory AudioFailure.audioNotFound() = _AudioNotFound;
  const factory AudioFailure.audioLimitExceeded() = _AudioLimitExceeded;
}