import 'dart:developer';

import 'package:dartz/dartz.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:melody/domain/database/database_failures.dart';

import 'database_repository.dart';

class DataBaseRepositoryImpl implements DataBaseRepository {
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
        throw const DataBaseFailure.audioExist();
      }
    } on DataBaseFailure {
      throw const DataBaseFailure.audioExist();
    } catch (e) {
      log(e.toString(), name: "DataBaseRepository-addAudioToPlayList");
      throw const DataBaseFailure.dataBaseFailure();
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
      return throw const DataBaseFailure.dataBaseFailure();
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
      return throw const DataBaseFailure.dataBaseFailure();
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
      return throw const DataBaseFailure.deleteFailure();
    }
  }

  @override
  Future<Unit> createPlaylist({required String playList}) async {
    try {
      Box box = await Hive.openBox(boxName);

      if (box.containsKey(playList)) {
        return throw const DataBaseFailure.nameAlreadyInUse();
      }
      await box.put(playList, []);
      return unit;
    } catch (e) {
      log(e.toString(), name: "DataBaseRepository-createPlaylist");
      return throw const DataBaseFailure.dataBaseFailure();
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
      return throw const DataBaseFailure.dataBaseFailure();
    }
  }
}
