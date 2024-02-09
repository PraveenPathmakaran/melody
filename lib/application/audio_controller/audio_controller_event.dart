part of 'audio_controller_bloc.dart';

@freezed
class AudioControllerEvent with _$AudioControllerEvent {
  const factory AudioControllerEvent.listenAllStreams() = _ListenAllStreams;
  const factory AudioControllerEvent.concatenatingAudios(
      {required List<Audio> audios, required int index,required String currentScreen}) = _ConcatenatingAudios;
}
