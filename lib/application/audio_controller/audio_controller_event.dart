part of 'audio_controller_bloc.dart';

@freezed
class AudioControllerEvent with _$AudioControllerEvent {
  const factory AudioControllerEvent.addToPlay({required int index}) =
      _AddToPlay;
  const factory AudioControllerEvent.playOrPause() = _PlayOrPause;
  const factory AudioControllerEvent.nextAudio() = _NextAudio;
  const factory AudioControllerEvent.previuosAudio() = _PreviuosAudio;
}
