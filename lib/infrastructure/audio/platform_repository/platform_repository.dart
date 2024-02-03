import 'dart:developer';

import 'package:flutter/services.dart';
import 'package:melody/domain/songs/audio.dart';
import 'package:melody/domain/songs/audio_failure.dart';
import 'package:melody/domain/songs/path.dart';
import 'package:melody/infrastructure/audio/path_dtos.dart';
import 'package:melody/infrastructure/audio/platform_repository/i_platform_repository.dart';

class PlatformRepository implements IPlatformRepository {
  static const String channelName = "audio";
  static const String getAllAudioName = "getAudios";
  static const String getAlbumMetaData = "getAlbumMetaData";
  static const platform = MethodChannel(channelName);
  @override
  Future<List<PathData>> getAllAudio() async {
    try {
      final audioList = await platform.invokeMethod<List<dynamic>?>(
        getAllAudioName,
      );
      if (audioList != null) {
        final audioDtos =
            audioList.map((e) => PathDatDto.fromStorage(e).toDomain()).toList();
        final data =
            await getAudioMetaData(path: audioDtos[1].audioPath.getOrCrash());
        log(data.toString());

        return audioDtos;
      }
      return [];
    } catch (e) {
      log(e.toString(), name: "$PlatformRepository-$getAllAudio");
      throw const AudioFailure.platFormFailure();
    }
  }

  @override
  Future<Audio> getAudioMetaData({required String path}) async {
    try {
      final audio =
          await platform.invokeMethod(getAlbumMetaData, {"path": path});

      log(audio.runtimeType.toString());
      return Audio.emptyAudio();
      // if (audio != null) {
      //   return AudioDto.fromJson(Map.from(audio)).toDomain();
      // } else {
      //   throw const AudioFailure.platFormFailure();
      // }
    } catch (e) {
      log(e.toString(), name: "$PlatformRepository-$getAllAudio");
      throw const AudioFailure.platFormFailure();
    }
  }
}
