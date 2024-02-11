import 'package:dartz/dartz.dart';
import 'package:melody/domain/songs/audio.dart';
import 'package:melody/domain/songs/audio_failure.dart';
import 'package:melody/domain/songs/playlist_failures.dart';

import 'audio_value_objects.dart';

abstract interface class IAudioRepository {
  Future<Either<AudioFailure, AudioImage>> getAudioImageMetadata(
      {required AudioPath audioPath});
  Future<Either<AudioFailure, List<Audio>>> getAllAudioFromDevice();
  Future<Either<AudioFailure, Unit>> concatenatingAudios(
      {required List<Audio> audioData});

  //controle music
  Future<Either<AudioFailure, Unit>> playAudio({required int index});
  Future<Either<AudioFailure, Unit>> playOrPause();
  Future<Either<AudioFailure, Unit>> nextAudio();
  Future<Either<AudioFailure, Unit>> previousAudio();
  Future<Either<AudioFailure, Unit>> changeShuffleMode();
  Future<Either<AudioFailure, Unit>> seekAudio({required Duration duration});
  Future<Either<AudioFailure, Unit>> setAudioLoopMode(
      {required AudioLoopMode audioLoopMode});

  //streams
  Stream<Either<AudioFailure, AudioDuration>> bufferedPositionStream();
  Stream<Either<AudioFailure, AudioDuration>> durationStream();
  Stream<Either<AudioFailure, AudioDuration>> positionStream();
  Stream<Either<AudioFailure, Audio>> sequenceStateStream();
  Stream<Either<AudioFailure, ButtonState>> buttonStateStream();
  Stream<Either<AudioFailure, bool>> shuffleModeStream();
  Stream<Either<AudioFailure, AudioLoopMode>> audioLoopStream();

  //database
  Future<Either<AudioFailure, Unit>> addAudioToPlayList({
    required PlayListName playListName,
    required AudioPath audioPath,
  });
  Future<Either<AudioFailure, List<AudioPath>>> getPlayList({
    required PlayListName playListName,
  });

  Future<bool> iscontainAudio({
    required PlayListName playListName,
    required AudioPath audioPath,
  });
  Future<Either<PlayListFailure, Unit>> createPlaylist(
      {required PlayListName playList});
  Future<Either<PlayListFailure, List<PlayListName>>> getAllPlaylist();
  Future<Either<PlayListFailure, Unit>> deletePlaylist(
      {required PlayListName playList});
}
