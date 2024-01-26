part of 'audio_bloc.dart';

@freezed
class AudioEvent with _$AudioEvent {
  const factory AudioEvent.playStorageAudio(
      {required Audio audio, required int index,required bool isNavigationEnabled}) = _PlayStorageAudio;
  const factory AudioEvent.playAudio() = _PlayAudio;
  const factory AudioEvent.pauseAudio() = _PauseAudio;
  const factory AudioEvent.backButtonPressed() = _BackButtonPressed;
}
