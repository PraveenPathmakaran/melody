import 'dart:developer';

import 'package:dartz/dartz.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:melody/domain/songs/playlist_failures.dart';
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
      final data = box.get(playListName, defaultValue: []) as List;
      final pathList = data.map((e) => e.toString()).toList();

      if (!pathList.contains(audioPath)) {
        pathList.add(audioPath);
        await box
            .put(playListName, pathList)
            .then((value) async => await box.close());
        return unit;
      } else {
        return throw const PlayListFailure.audioExist();
      }
    } catch (e) {
      log(e.toString(), name: "DataBaseRepository-addAudioToPlayList");
      return throw const PlayListFailure.dataBaseFailure();
    }
  }

  @override
  Future<Unit> removeAudioFromPlayList(
      {required String audioPath, required String playListName}) async {
    try {
      Box box = await Hive.openBox(boxName);
      final data = box.get(playListName, defaultValue: []) as List;
      final pathList = data.map((e) => e.toString()).toList();

      if (pathList.contains(audioPath)) {
        pathList.remove(audioPath);
        await box
            .put(playListName, pathList)
            .then((value) async => await box.close());
      }
      return unit;
    } catch (e) {
      log(e.toString(), name: "DataBaseRepository-removeAudioFromPlayList");
      return throw const PlayListFailure.dataBaseFailure();
    }
  }

  @override
  Future<List<String>> getPlayListAudios({required String playListName}) async {
    try {
      Box box = await Hive.openBox(boxName);
      final data = box.get(playListName, defaultValue: []) as List;
      final pathList = data.map((e) => e.toString()).toList();

      return pathList.map((e) => e).toList();
    } catch (e) {
      log(e.toString(), name: "DataBaseRepository-getPlayList");
      return throw const PlayListFailure.dataBaseFailure();
    }
  }

  @override
  Future<Unit> deletePlayList({required String playListName}) async {
    try {
      Box box = await Hive.openBox(boxName);
      await box.delete(playListName);
      return unit;
    } catch (e) {
      log(e.toString(), name: "DataBaseRepository-deletePlayList");
      return throw const PlayListFailure.deleteFailure();
    }
  }

  @override
  Future<bool> isContainAudio(
      {required String playList, required String audioPath}) async {
    try {
      Box box = await Hive.openBox(boxName);
      final List<String>? audiosPath = box.get(playList);
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
      return throw const PlayListFailure.dataBaseFailure();
    }
  }

  @override
  Future<Unit> createPlaylist({required String playList}) async {
    try {
      Box box = await Hive.openBox(boxName);

      if (box.containsKey(playList)) {
        return throw const PlayListFailure.nameAlreadyInUse();
      }
      await box.put(playList, []);
      return unit;
    } catch (e) {
      log(e.toString(), name: "DataBaseRepository-createPlaylist");
      return throw const PlayListFailure.dataBaseFailure();
    }
  }

  @override
  Future<List<String>> getAllPlaylist() async {
    try {
      Box box = await Hive.openBox(boxName);
      final List<String> allPlayList =
          box.keys.map((e) => e.toString()).toList();
      return allPlayList;
    } catch (e) {
      log(e.toString(), name: "DataBaseRepository-getAllPlaylist");
      return throw const PlayListFailure.dataBaseFailure();
    }
  }
}
