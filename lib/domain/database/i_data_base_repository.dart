import 'package:dartz/dartz.dart';

import '../audio/audio_value_objects.dart';
import 'database_failures.dart';

abstract interface class IDataBaseRepository {
  //database playList
  Future<Either<DataBaseFailure, Unit>> addAudioToPlayList({
    required PlayListName playListName,
    required AudioPath audioPath,
  });
  Future<Either<DataBaseFailure, Unit>> removeAudioFromPlayList({
    required AudioPath audioPath,
    required PlayListName playListName,
  });
  Future<Either<DataBaseFailure, List<AudioPath>>> getPlayList({
    required PlayListName playListName,
  });


  Future<Either<DataBaseFailure, Unit>> createPlaylist(
      {required PlayListName playList});
  Future<Either<DataBaseFailure, List<PlayListName>>> getAllPlaylist();
  Future<Either<DataBaseFailure, Unit>> deletePlaylist(
      {required PlayListName playList});
  
}
