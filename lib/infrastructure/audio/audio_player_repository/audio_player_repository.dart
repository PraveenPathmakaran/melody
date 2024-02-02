import 'package:just_audio/just_audio.dart';
import 'package:melody/domain/songs/audio_failure.dart';
import 'package:melody/domain/songs/audio_value_objects.dart';
import 'package:melody/infrastructure/audio/audio_player_repository/i_audio_player_repository.dart';
import 'package:melody/infrastructure/audio/platform_repository/i_platform_repository.dart';

import '../../../domain/songs/audio.dart';

///[audioPosition] is created for store audio position dont need to itereate
///[audioSongs]
class AudioPlayerRepository implements IAudioPlayerRepository {
  final AudioPlayer _audioPlayer;
  final IPlatformRepository _platformRepository;
  Map<String, int> audioPosition = <String, int>{};
  List<Audio> audioSongs = [];

  AudioPlayerRepository(this._audioPlayer, this._platformRepository);

  @override
  Future<List<Id>> concatenatingAudios() async {
    final songsData = await _platformRepository.getAllAudio();
    audioSongs.addAll(songsData);

    final concatenatedList = <UriAudioSource>[];

    for (int i = 0; i < audioSongs.length; i++) {
      if (audioSongs[i].path.value.isRight() &&
          audioSongs[i].uid.value.isRight()) {
        concatenatedList.add(AudioSource.file(audioSongs[i].path.getOrCrash(),
            tag: audioSongs[i].uid.getOrCrash()));
        audioPosition[audioSongs[i].uid.getOrCrash()] = i;
      }
    }

    final playlist = ConcatenatingAudioSource(
      // Start loading next item just before reaching it
      useLazyPreparation: true,
      // Customise the shuffle algorithm
      shuffleOrder: DefaultShuffleOrder(),
      // Specify the playlist items
      children: concatenatedList,
    );

    _audioPlayer.setAudioSource(playlist,
        initialIndex: 0, initialPosition: Duration.zero);

    return playlist.sequence.map((e) => Id(e.tag)).toList();
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
  Stream<bool> shuffleModeStream() async*{
  yield* _audioPlayer.shuffleModeEnabledStream;
  }

  @override
  Audio getAudioData({required String uid}) {
    // help of this map get value constant time
    final position = audioPosition[uid];
    if (position != null) {
      return audioSongs[position];
    }
    throw const AudioFailure.audioNotFound();
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
  void changeShuffleMode() {
    if (!_audioPlayer.shuffleModeEnabled) {
      _audioPlayer.shuffle();
      _audioPlayer.setShuffleModeEnabled(true);
    } else {
      _audioPlayer.setShuffleModeEnabled(false);
    }
  }
}
