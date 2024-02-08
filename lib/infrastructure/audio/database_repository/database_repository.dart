import 'dart:developer';

import 'package:dartz/dartz.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:melody/domain/songs/audio_failure.dart';
import 'package:melody/infrastructure/audio/database_repository/i_database_repository.dart';

class DataBaseRepository implements IDataBaseRepository {
  static const String boxName = "playlist";
  @override
  Future<Unit> addAudioToPlayList({
    required String audioPath,
    required String playListName,
  }) async {
    try {
      Box box = await Hive.openBox(boxName);
      List<String>? pathList = box.get(playListName);
      pathList ??= [];
      if (pathList.contains(audioPath)) {
        pathList.remove(audioPath);
      } else {
        pathList.add(audioPath);
      }
      await box.put(playListName, pathList).then((value) => box.close());
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
      final List<String>? data = box.get(playListName);
      await box.close();
      if (data == null) {
        return [];
      }
      return data.map((e) => e).toList();
    } catch (e) {
      log(e.toString(), name: "DataBaseRepository-getPlayList");
      return throw const AudioFailure.dataBaseFailure();
    }
  }

  @override
  Future<Unit> deletePlayList({required String playListName}) async {
    try {
      Box box = await Hive.openBox(boxName);
      await box.delete(playListName);
      await box.close();
      return unit;
    } catch (e) {
      log(e.toString(), name: "DataBaseRepository-deletePlayList");
      return throw const AudioFailure.dataBaseFailure();
    }
  }

  @override
  Future<bool> isContainAudio(
      {required String playList, required String audioPath}) async {
    try {
      Box box = await Hive.openBox(boxName);
      final List<String>? audiosPath = box.get(playList);
      await box.close();
      if (audiosPath == null) {
        return false;
      }
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

  @override
  Future<Unit> clearPlayList() async {
    try {
      Box box = await Hive.openBox(boxName);
      await box.clear();
      await box.close();
      return unit;
    } catch (e) {
      log(e.toString(), name: "DataBaseRepository-setPlayList");
      return throw const AudioFailure.dataBaseFailure();
    }
  }
}
