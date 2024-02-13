import 'package:dartz/dartz.dart';
import 'package:just_audio/just_audio.dart';
import 'package:melody/domain/songs/audio.dart';
import 'package:melody/domain/songs/audio_value_objects.dart';
import 'package:melody/domain/songs/i_audio_repository.dart';
import 'package:melody/domain/songs/playlist_failures.dart';
import 'package:melody/infrastructure/audio/audio_player_repository/i_audio_player_repository.dart';
import 'package:melody/infrastructure/audio/database_repository/i_database_repository.dart';
import 'package:rxdart/rxdart.dart';

import '../../domain/songs/audio_failure.dart';
import 'platform_repository/i_platform_repository.dart';

class AudioRepository implements IAudioRepository {
  final IAudioPlayerRepository _audioPlayerRepository;
  final IPlatformRepository _platformRepository;
  final IDataBaseRepository _dataBaseRepository;
  // Define the playlist
  late ConcatenatingAudioSource playlist;

  AudioRepository(
    this._audioPlayerRepository,
    this._platformRepository,
    this._dataBaseRepository,
  );

  @override
  Future<Either<AudioFailure, List<Audio>>> getAllAudioFromDevice() async {
    try {
      final songsData = await _platformRepository.getAllAudio();

      return right(songsData);
    } catch (e) {
      return left(const AudioFailure.platFormFailure());
    }
  }

  @override
  Future<Either<AudioFailure, Unit>> concatenatingAudios(
      {required List<Audio> audioData}) async {
    try {
      await _audioPlayerRepository.concatenatingAudios(audioSongs: audioData);
      return right(unit);
    } catch (e) {
      return left(const AudioFailure.audioPlayerFailure());
    }
  }

  @override
  Future<Either<AudioFailure, Unit>> playOrPause() async {
    try {
      _audioPlayerRepository.playOrPause();
      return right(unit);
    } catch (e) {
      return left(const AudioFailure.audioPlayerFailure());
    }
  }

  @override
  Future<Either<AudioFailure, Unit>> playAudio({required int index}) async {
    try {
      await _audioPlayerRepository.playAudio(index: index);
      return right(unit);
    } catch (e) {
      return left(const AudioFailure.audioPlayerFailure());
    }
  }

  @override
  Future<Either<AudioFailure, Unit>> nextAudio() async {
    try {
      _audioPlayerRepository.nextAudio();
      return right(unit);
    } catch (e) {
      return left(const AudioFailure.audioPlayerFailure());
    }
  }

  @override
  Future<Either<AudioFailure, Unit>> previousAudio() async {
    try {
      _audioPlayerRepository.previousAudio();
      return right(unit);
    } catch (e) {
      return left(const AudioFailure.audioPlayerFailure());
    }
  }

  @override
  Future<Either<AudioFailure, Unit>> seekAudio(
      {required Duration duration}) async {
    try {
      _audioPlayerRepository.seekAudio(duration: duration);
      return right(unit);
    } catch (e) {
      return left(const AudioFailure.audioPlayerFailure());
    }
  }

  @override
  Future<Either<AudioFailure, Unit>> changeShuffleMode() async {
    try {
      _audioPlayerRepository.changeShuffleMode();
      return right(unit);
    } catch (e) {
      return left(const AudioFailure.audioPlayerFailure());
    }
  }

  @override
  Future<Either<AudioFailure, Unit>> setAudioLoopMode(
      {required AudioLoopMode audioLoopMode}) async {
    try {
      _audioPlayerRepository.setAudioLoopMode(audioLoopMode: audioLoopMode);
      return right(unit);
    } catch (e) {
      return left(const AudioFailure.audioPlayerFailure());
    }
  }

  @override
  Future<Either<AudioFailure, AudioImage>> getAudioImageMetadata(
      {required AudioPath audioPath}) async {
    try {
      final image = await _platformRepository.getAudioMetaData(
          path: audioPath.getOrCrash());

      return right(image);
    } catch (e) {
      return left(const AudioFailure.platFormFailure());
    }
  }

  @override
  Stream<Either<AudioFailure, AudioDuration>> bufferedPositionStream() async* {
    yield* _audioPlayerRepository
        .bufferedPositionStream()
        .map<Either<AudioFailure, AudioDuration>>(
            (duration) => right(AudioDuration(duration)))
        .onErrorReturnWith((error, stackTrace) =>
            left(const AudioFailure.audioPlayerFailure()));
  }

  @override
  Stream<Either<AudioFailure, AudioDuration>> durationStream() async* {
    yield* _audioPlayerRepository
        .durationStream()
        .map<Either<AudioFailure, AudioDuration>>(
            (duration) => right(AudioDuration(duration)))
        .onErrorReturnWith((error, stackTrace) =>
            left(const AudioFailure.audioPlayerFailure()));
  }

  @override
  Stream<Either<AudioFailure, AudioDuration>> positionStream() async* {
    yield* _audioPlayerRepository
        .positionStream()
        .map<Either<AudioFailure, AudioDuration>>(
            (duration) => right(AudioDuration(duration)))
        .onErrorReturnWith((error, stackTrace) =>
            left(const AudioFailure.audioPlayerFailure()));
  }

  @override
  Stream<Either<AudioFailure, Audio>> sequenceStateStream() async* {
    yield* _audioPlayerRepository
        .sequenceStateStream()
        .map<Either<AudioFailure, Audio>>((sequenceState) {
      return right(sequenceState);
    }).onErrorReturnWith((error, stackTrace) =>
            left(const AudioFailure.audioPlayerFailure()));
  }

  @override
  Stream<Either<AudioFailure, ButtonState>> buttonStateStream() async* {
    yield* _audioPlayerRepository
        .buttonState()
        .map<Either<AudioFailure, ButtonState>>(
            (buttonState) => right(buttonState))
        .onErrorReturnWith((error, stackTrace) =>
            left(const AudioFailure.audioPlayerFailure()));
  }

  @override
  Stream<Either<AudioFailure, bool>> shuffleModeStream() async* {
    yield* _audioPlayerRepository
        .shuffleModeStream()
        .map<Either<AudioFailure, bool>>((isShuffle) => right(isShuffle))
        .onErrorReturnWith((error, stackTrace) =>
            left(const AudioFailure.audioPlayerFailure()));
  }

  @override
  Stream<Either<AudioFailure, AudioLoopMode>> audioLoopStream() async* {
    yield* _audioPlayerRepository
        .loopAudioStream()
        .map<Either<AudioFailure, AudioLoopMode>>((loopMode) => right(loopMode))
        .onErrorReturnWith((error, stackTrace) =>
            left(const AudioFailure.audioPlayerFailure()));
  }

//playList
  @override
  Future<Either<PlayListFailure, List<AudioPath>>> getPlayList(
      {required PlayListName playListName}) async {
    try {
      final name = playListName.getOrCrash();
      final playListData =
          await _dataBaseRepository.getPlayListAudios(playListName: name);
      final audioPathList = playListData.map((e) => AudioPath(e)).toList();

      return right(audioPathList);
    } catch (e) {
      return left(const PlayListFailure.dataBaseFailure());
    }
  }

  @override
  Future<bool> iscontainAudio({
    required PlayListName playListName,
    required AudioPath audioPath,
  }) async {
    try {
      final isContain = await _dataBaseRepository.isContainAudio(
          playList: playListName.getOrCrash(),
          audioPath: audioPath.getOrCrash());
      return isContain;
    } catch (e) {
      return false;
    }
  }

  @override
  Future<Either<PlayListFailure, Unit>> addAudioToPlayList(
      {required PlayListName playListName,
      required AudioPath audioPath}) async {
    try {
      final name = playListName.getOrCrash();
      final path = audioPath.getOrCrash();
      await _dataBaseRepository.addAudioToPlayList(
          audioPath: path, playListName: name);
      return right(unit);
    } catch (e) {
      return left(const PlayListFailure.dataBaseFailure());
    }
  }

  @override
  Future<Either<PlayListFailure, Unit>> removeAudioFromPlayList(
      {required AudioPath audioPath,
      required PlayListName playListName}) async {
    try {
      final name = playListName.getOrCrash();
      final path = audioPath.getOrCrash();
      await _dataBaseRepository.removeAudioFromPlayList(
          audioPath: path, playListName: name);
      return right(unit);
    } catch (e) {
      return left(const PlayListFailure.dataBaseFailure());
    }
  }

  @override
  Future<Either<PlayListFailure, Unit>> createPlaylist(
      {required PlayListName playList}) async {
    try {
      final name = playList.getOrCrash();
      await _dataBaseRepository.createPlaylist(playList: name);
      return right(unit);
    } on PlayListFailure catch (e) {
      return left(e.maybeMap(
        orElse: () => const PlayListFailure.dataBaseFailure(),
        nameAlreadyInUse: (value) => const PlayListFailure.nameAlreadyInUse(),
      ));
    } catch (e) {
      return left(const PlayListFailure.dataBaseFailure());
    }
  }

  @override
  Future<Either<PlayListFailure, List<PlayListName>>> getAllPlaylist() async {
    try {
      final playListData = await _dataBaseRepository.getAllPlaylist();

      final playListName = playListData.map((e) => PlayListName(e)).toList();

      return right(playListName);
    } catch (e) {
      return left(const PlayListFailure.dataBaseFailure());
    }
  }

  @override
  Future<Either<PlayListFailure, Unit>> deletePlaylist(
      {required PlayListName playList}) async {
    try {
      final playListData = await _dataBaseRepository.deletePlayList(
        playListName: playList.getOrCrash(),
      );
      return right(playListData);
    } catch (e) {
      return left(const PlayListFailure.dataBaseFailure());
    }
  }

  @override
  Future<Either<AudioFailure, Unit>> removeFromPlayList(
      {required int index}) async {
    try {
      await _audioPlayerRepository.removeFromPlayList(index: index);
      return right(unit);
    } catch (e) {
      return left(const AudioFailure.dataBaseFailure());
    }
  }
}
