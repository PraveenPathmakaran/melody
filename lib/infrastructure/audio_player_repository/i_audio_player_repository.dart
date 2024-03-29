import 'package:dartz/dartz.dart';

import '../../domain/audio/audio.dart';

abstract interface class AudioPlayerRepository {
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
  Future<void> removeFromPlayList({required int index});

  //streams
  Stream<int> bufferedPositionStream();
  Stream<int> durationStream();
  Stream<int> positionStream();
  Stream<Audio> sequenceStateStream();
  Stream<ButtonState> buttonState();
  Stream<bool> shuffleModeStream();
  Stream<AudioLoopMode> loopAudioStream();
}
