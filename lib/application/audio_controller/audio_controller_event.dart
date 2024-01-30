part of 'audio_controller_bloc.dart';

@freezed
class AudioControllerEvent with _$AudioControllerEvent {
  const factory AudioControllerEvent.listenAllStreams() = _ListenAllStreams;
  const factory AudioControllerEvent.closeStream() = _CloseStream;
}
