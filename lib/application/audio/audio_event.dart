part of 'audio_bloc.dart';

@freezed
class AudioEvent with _$AudioEvent {
  const factory AudioEvent.getAllAudiosFromDevice() =
      _ConcatenatingAudios;
  const factory AudioEvent.changePlayList({required String key}) =
      _ChangePlayList;
   
 
}
