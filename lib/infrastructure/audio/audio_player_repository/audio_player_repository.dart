import 'dart:developer';

import 'package:dartz/dartz.dart';
import 'package:just_audio/just_audio.dart';
import 'package:melody/domain/songs/audio_failure.dart';
import 'package:melody/infrastructure/audio/audio_player_repository/i_audio_player_repository.dart';
import 'package:rxdart/rxdart.dart';

import '../../../domain/songs/audio.dart';

class AudioPlayerRepository implements IAudioPlayerRepository {
  final AudioPlayer _audioPlayer;
  final ConcatenatingAudioSource playlist = ConcatenatingAudioSource(
    // Start loading next item just before reaching it
    useLazyPreparation: true,
    // Customise the shuffle algorithm
    shuffleOrder: DefaultShuffleOrder(),
    // Specify the playlist items
    children: [],
  );

  static const name = "AudioPlayerRepository";
  AudioPlayerRepository(
    this._audioPlayer,
  );

  @override
  Future<Unit> concatenatingAudios({required List<Audio> audioSongs}) async {
    try {
      final List<UriAudioSource> newplaylist = audioSongs
          .map((e) => AudioSource.file(e.audioPath.getOrCrash(), tag: e))
          .toList();

      playlist.clear();
      playlist.addAll(newplaylist);
      await setAudioSource();
      return unit;
    } catch (e) {
      log(e.toString(), name: "$name-concatenatingAudios");
      throw const AudioFailure.audioPlayerFailure();
    }
  }

  @override
  Future<Unit> setAudioSource() async {
    try {
      await _audioPlayer.setAudioSource(playlist,
          initialIndex: 0, initialPosition: Duration.zero);
      return unit;
    } catch (e) {
      log(e.toString(), name: "$name-setAudioSource");
      throw const AudioFailure.audioPlayerFailure();
    }
  }

  @override
  Future<void> playAudio({required int index}) async {
    try {
      await _audioPlayer.seek(Duration.zero, index: index);
      _audioPlayer.play();
    } catch (e) {
      log(e.toString(), name: "$name-playAudio");
      throw const AudioFailure.audioPlayerFailure();
    }
  }

  @override
  void playOrPause() {
    try {
      if (_audioPlayer.playing) {
        _audioPlayer.pause();
      } else {
        _audioPlayer.play();
      }
    } catch (e) {
      log(e.toString(), name: "$name-playOrPause");
      throw const AudioFailure.audioPlayerFailure();
    }
  }

  @override
  void nextAudio() {
    try {
      _audioPlayer.seekToNext();
    } catch (e) {
      log(e.toString(), name: "$name-nextAudio");
      throw const AudioFailure.audioPlayerFailure();
    }
  }

  @override
  void previousAudio() {
    try {
      _audioPlayer.seekToPrevious();
    } catch (e) {
      log(e.toString(), name: "$name-previousAudio");
      throw const AudioFailure.audioPlayerFailure();
    }
  }

  @override
  void seekAudio({required Duration duration}) {
    try {
      _audioPlayer.seek(duration);
    } catch (e) {
      log(e.toString(), name: "$name-seekAudio");
      throw const AudioFailure.audioPlayerFailure();
    }
  }

  @override
  void changeShuffleMode() {
    try {
      if (!_audioPlayer.shuffleModeEnabled) {
        _audioPlayer.shuffle();
        _audioPlayer.setShuffleModeEnabled(true);
      } else {
        _audioPlayer.setShuffleModeEnabled(false);
      }
    } catch (e) {
      log(e.toString(), name: "$name-changeShuffleMode");
      throw const AudioFailure.audioPlayerFailure();
    }
  }

  @override
  void setAudioLoopMode({required AudioLoopMode audioLoopMode}) {
    try {
      LoopMode loopMode = LoopMode.off;

      switch (audioLoopMode) {
        case AudioLoopMode.one:
          loopMode = LoopMode.one;
          break;
        case AudioLoopMode.all:
          loopMode = LoopMode.all;
          break;
        default:
          loopMode = LoopMode.off;
          break;
      }
      _audioPlayer.setLoopMode(loopMode);
    } catch (e) {
      log(e.toString(), name: "$name-setAudioLoopMode");
      throw const AudioFailure.audioPlayerFailure();
    }
  }

  @override
  Stream<int> bufferedPositionStream() async* {
    yield* _audioPlayer.bufferedPositionStream
        .map((event) => event.inSeconds)
        .onErrorReturnWith((error, stacTrace) {
      log(error.toString(), name: "$name-bufferedPositionStream");
      throw const AudioFailure.audioPlayerFailure();
    });
  }

  @override
  Stream<Audio> sequenceStateStream() async* {
    yield* _audioPlayer.sequenceStateStream.map<Audio>((event) {
      if (event != null) {
        final currentItem = event.currentSource;
        return currentItem?.tag;
      }
      throw const AudioFailure.audioPlayerFailure();
    }).onErrorReturnWith((error, stackTrace) {
      log(error.toString(), name: "$name-sequenceStateStream");
      throw const AudioFailure.audioPlayerFailure();
    });
  }

  @override
  Stream<int> durationStream() async* {
    yield* _audioPlayer.durationStream
        .map((event) => event?.inSeconds ?? 0)
        .onErrorReturnWith((error, stackTrace) {
      log(error.toString(), name: "$name-durationStream");
      throw const AudioFailure.audioPlayerFailure();
    });
  }

  @override
  Stream<int> positionStream() async* {
    yield* _audioPlayer.positionStream
        .map((event) => event.inSeconds)
        .onErrorReturnWith((error, stackTrace) {
      log(error.toString(), name: "$name-positionStream");
      throw const AudioFailure.audioPlayerFailure();
    });
  }

  @override
  Stream<bool> shuffleModeStream() async* {
    yield* _audioPlayer.shuffleModeEnabledStream
        .onErrorReturnWith((error, stackTrace) {
      log(error.toString(), name: "$name-shuffleModeStream");
      throw const AudioFailure.audioPlayerFailure();
    });
  }

  @override
  Stream<ButtonState> buttonState() async* {
    yield* _audioPlayer.playerStateStream.map((event) {
      final isPlaying = event.playing;
      final processingState = event.processingState;
      if (processingState == ProcessingState.loading) {
        return ButtonState.paused;
      } else if (!isPlaying) {
        return ButtonState.paused;
      } else {
        return ButtonState.playing;
      }
    }).onErrorReturnWith((error, stackTrace) {
      log(error.toString(), name: "$name-buttonState");
      throw const AudioFailure.audioPlayerFailure();
    });
  }

  @override
  Stream<AudioLoopMode> loopAudioStream() async* {
    yield* _audioPlayer.loopModeStream.map((event) {
      switch (event) {
        case LoopMode.off:
          return AudioLoopMode.off;
        case LoopMode.one:
          return AudioLoopMode.one;
        case LoopMode.all:
          return AudioLoopMode.all;
        default:
          return AudioLoopMode.off;
      }
    }).onErrorReturnWith((error, stackTrace) {
      log(error.toString(), name: "$name-loopAudioStream");
      throw const AudioFailure.audioPlayerFailure();
    });
  }
}
