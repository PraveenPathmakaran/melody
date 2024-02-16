import 'package:dartz/dartz.dart';
import 'package:melody/domain/database/i_data_base_repository.dart';

import '../../domain/audio/audio_value_objects.dart';
import '../../domain/database/database_failures.dart';
import 'database_repository.dart';

class IDataBaseRepoImpl implements IDataBaseRepository {
  final DataBaseRepository _dataBaseRepository;

  IDataBaseRepoImpl(this._dataBaseRepository);
  //playList
  @override
  Future<Either<DataBaseFailure, List<AudioPath>>> getPlayList(
      {required PlayListName playListName}) async {
    try {
      final name = playListName.getOrCrash();
      final playListData =
          await _dataBaseRepository.getPlayListAudios(playListName: name);
      final audioPathList = playListData.map((e) => AudioPath(e)).toList();

      return right(audioPathList);
    } catch (e) {
      return left(const DataBaseFailure.dataBaseFailure());
    }
  }

  @override
  Future<Either<DataBaseFailure, Unit>> addAudioToPlayList(
      {required PlayListName playListName,
      required AudioPath audioPath}) async {
    try {
      final name = playListName.getOrCrash();
      final path = audioPath.getOrCrash();
      await _dataBaseRepository.addAudioToPlayList(
          audioPath: path, playListName: name);
      return right(unit);
    } on DataBaseFailure catch (e) {
      return left(e.maybeMap(
        orElse: DataBaseFailure.dataBaseFailure,
        audioExist: (value) => const DataBaseFailure.audioExist(),
      ));
    } catch (e) {
      return left(const DataBaseFailure.dataBaseFailure());
    }
  }

  @override
  Future<Either<DataBaseFailure, Unit>> removeAudioFromPlayList(
      {required AudioPath audioPath,
      required PlayListName playListName}) async {
    try {
      final name = playListName.getOrCrash();
      final path = audioPath.getOrCrash();
      await _dataBaseRepository.removeAudioFromPlayList(
          audioPath: path, playListName: name);
      return right(unit);
    } catch (e) {
      return left(const DataBaseFailure.dataBaseFailure());
    }
  }

  @override
  Future<Either<DataBaseFailure, Unit>> createPlaylist(
      {required PlayListName playList}) async {
    try {
      final name = playList.getOrCrash();
      await _dataBaseRepository.createPlaylist(playList: name);
      return right(unit);
    } on DataBaseFailure catch (e) {
      return left(e.maybeMap(
        orElse: () => const DataBaseFailure.dataBaseFailure(),
        nameAlreadyInUse: (value) => const DataBaseFailure.nameAlreadyInUse(),
      ));
    } catch (e) {
      return left(const DataBaseFailure.dataBaseFailure());
    }
  }

  @override
  Future<Either<DataBaseFailure, List<PlayListName>>> getAllPlaylist() async {
    try {
      final playListData = await _dataBaseRepository.getAllPlaylist();

      final playListName = playListData.map((e) => PlayListName(e)).toList();

      return right(playListName);
    } catch (e) {
      return left(const DataBaseFailure.dataBaseFailure());
    }
  }

  @override
  Future<Either<DataBaseFailure, Unit>> deletePlaylist(
      {required PlayListName playList}) async {
    try {
      final playListData = await _dataBaseRepository.deletePlayList(
        playListName: playList.getOrCrash(),
      );
      return right(playListData);
    } catch (e) {
      return left(const DataBaseFailure.dataBaseFailure());
    }
  }
}
