import 'package:melody/domain/songs/audio_value_objects.dart';

import '../../../domain/songs/audio.dart';

abstract class IAudioPlayerRepository {
  Future<List<Id>> concatenatingAudios();
  Audio getAudioData({required String uid});

  //controle music
  void playAudio({required int index});
  void playOrPause();
  void nextAudio();
  void previousAudio();
  void seekAudio({required Duration duration});

  //streams
  Stream<int> bufferedPositionStream();
  Stream<int> durationStream();
  Stream<int> positionStream();
  Stream<String> sequenceStateStream();
   Stream<ButtonState> buttonState();
}
