import 'package:dartz/dartz.dart';
import 'package:just_audio/just_audio.dart';
import 'package:melody/infrastructure/audio/audio_player_repository/i_audio_player_repository.dart';

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

  AudioPlayerRepository(
    this._audioPlayer,
  );

  @override
  Future<Unit> concatenatingAudios({required List<Audio> audioSongs}) async {
    final List<UriAudioSource> concatenatedList =
        audioSongs.map((e) => AudioSource.file(e.path.getOrCrash())).toList();

    playlist.addAll(concatenatedList);
    return unit;
  }

  @override
  Future<Unit> setAudioSource() async {
    _audioPlayer.setAudioSource(playlist,
        initialIndex: 0, initialPosition: Duration.zero);
    return unit;
  }

  @override
  void playAudio({required int index}) {
    _audioPlayer.seek(Duration.zero, index: index);
    _audioPlayer.play();
  }

  @override
  void playOrPause() {
    if (_audioPlayer.playing) {
      _audioPlayer.pause();
    } else {
      _audioPlayer.play();
    }
  }

  @override
  void nextAudio() {
    _audioPlayer.seekToNext();
  }

  @override
  void previousAudio() {
    _audioPlayer.seekToPrevious();
  }

  @override
  void seekAudio({required Duration duration}) {
    _audioPlayer.seek(duration);
  }

  @override
  void changeShuffleMode() {
    if (!_audioPlayer.shuffleModeEnabled) {
      _audioPlayer.shuffle();
      _audioPlayer.setShuffleModeEnabled(true);
    } else {
      _audioPlayer.setShuffleModeEnabled(false);
    }
  }

  @override
  void setAudioLoopMode({required AudioLoopMode audioLoopMode}) {
    LoopMode loopMode = LoopMode.off;
    if (audioLoopMode == AudioLoopMode.off) {
      loopMode = LoopMode.off;
    }
    if (audioLoopMode == AudioLoopMode.one) {
      loopMode = LoopMode.one;
    }
    if (audioLoopMode == AudioLoopMode.all) {
      loopMode = LoopMode.all;
    }

    _audioPlayer.setLoopMode(loopMode);
  }

  @override
  Stream<int> bufferedPositionStream() async* {
    yield* _audioPlayer.bufferedPositionStream.map((event) => event.inSeconds);
  }

  @override
  Stream<String> sequenceStateStream() async* {
    yield* _audioPlayer.sequenceStateStream.map<String>((event) {
      if (event != null) {
        final currentItem = event.currentSource;
        return currentItem?.tag ?? "";
      }
      return "";
    });
  }

  @override
  Stream<int> durationStream() async* {
    yield* _audioPlayer.durationStream.map((event) => event?.inSeconds ?? 0);
  }

  @override
  Stream<int> positionStream() async* {
    yield* _audioPlayer.positionStream.map((event) => event.inSeconds);
  }

  @override
  Stream<bool> shuffleModeStream() async* {
    yield* _audioPlayer.shuffleModeEnabledStream;
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
    });
    throw UnimplementedError();
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
    });
  }
}
