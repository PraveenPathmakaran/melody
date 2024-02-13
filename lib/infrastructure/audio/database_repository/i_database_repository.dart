import 'package:dartz/dartz.dart';

abstract interface class IDataBaseRepository {
  Future<Unit> addAudioToPlayList({
    required String audioPath,
    required String playListName,
  });
    Future<Unit> removeAudioFromPlayList({
    required String audioPath,
    required String playListName,
  });
  Future<List<String>> getPlayListAudios({
    required String playListName,
  });
  Future<Unit> deletePlayList({
    required String playListName,
  });

  Future<bool> isContainAudio(
      {required String playList, required String audioPath});
  Future<Unit> createPlaylist({required String playList});
  Future<List<String>> getAllPlaylist();
}
