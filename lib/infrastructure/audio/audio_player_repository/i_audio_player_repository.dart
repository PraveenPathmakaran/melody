import 'package:dartz/dartz.dart';

import '../../../domain/songs/audio.dart';

abstract interface class IAudioPlayerRepository {
  Future<Unit> concatenatingAudios({required List<Audio> audioSongs});
  Future<Unit> setAudioSource();

  //controle music
  Future<void> playAudio({required int index});
  void playOrPause();
  void nextAudio();
  void previousAudio();
  void changeShuffleMode();
  void setAudioLoopMode({required AudioLoopMode audioLoopMode});
  void seekAudio({required Duration duration});

  //streams
  Stream<int> bufferedPositionStream();
  Stream<int> durationStream();
  Stream<int> positionStream();
  Stream<String> sequenceStateStream();
  Stream<ButtonState> buttonState();
  Stream<bool> shuffleModeStream();
  Stream<AudioLoopMode> loopAudioStream();
}
