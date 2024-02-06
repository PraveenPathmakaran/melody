import 'package:dartz/dartz.dart';

abstract interface class IDataBaseRepository {
  Future<Unit> setPlayList({
    required List<String> audioPath,
    required String playListName,
  });
  Future<List<String>> getPlayList({
    required String playListName,
  });
  Future<Unit> deletePlayList({
    required String playListName,
  });

  Future<bool> isContainAudio(
      {required String playList, required String audioPath});
}
