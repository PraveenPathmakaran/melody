import 'dart:developer';

import 'package:dartz/dartz.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:melody/domain/songs/audio_failure.dart';
import 'package:melody/infrastructure/audio/database_repository/i_database_repository.dart';

class DataBaseRepository implements IDataBaseRepository {
  static const String boxName = "playlist";
  @override
  Future<Unit> setPlayList(
      {required List<String> audioPath, required String playListName}) async {
    try {
      Box box = await Hive.openBox(boxName);
      final List<String> pathData = audioPath.map((e) => e).toList();
      box.put(playListName, pathData).then((value) => box.close());
      return unit;
    } catch (e) {
      log(e.toString(), name: "DataBaseRepository-setPlayList");
      return throw const AudioFailure.dataBaseFailure();
    }
  }

  @override
  Future<List<String>> getPlayList({required String playListName}) async {
    try {
      Box box = await Hive.openBox(boxName);
      final List<String> data = box.get(playListName);
      box.close();
      return data.map((e) => e).toList();
    } catch (e) {
      log(e.toString(), name: "DataBaseRepository-getAudioMetaData");
      return throw const AudioFailure.dataBaseFailure();
    }
  }

  @override
  Future<Unit> deletePlayList({required String playListName}) async {
    try {
      Box box = await Hive.openBox(boxName);
      box.delete(playListName);
      return unit;
    } catch (e) {
      log(e.toString(), name: "DataBaseRepository-getAudioMetaData");
      return throw const AudioFailure.dataBaseFailure();
    }
  }

  @override
  Future<bool> isContainAudio(
      {required String playList, required String audioPath}) async {
    try {
      Box box = await Hive.openBox(boxName);
      final List<String> audiosPath = box.get(playList);
      if (audiosPath.contains(audioPath)) {
        return true;
      } else {
        return false;
      }
    } catch (e) {
      log(e.toString(), name: "DataBaseRepository-isContainAudio");
      return throw const AudioFailure.dataBaseFailure();
    }
  }
}
