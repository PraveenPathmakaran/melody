import 'dart:developer';
import 'dart:io';

import 'package:flutter/services.dart';
import 'package:permission_handler/permission_handler.dart';

import '../../domain/audio/audio.dart';
import '../../domain/plat_form/platform_channel_failure.dart';
import '../audio_player_repository/audio_dtos.dart';
import 'platform_repository.dart';

class PlatformRepositoryImpl implements PlatformRepository {
  static const String channelName = "audio";
  static const String getAllAudioName = "getAudios";
  static const String getAlbumMetaData = "getAlbumMetaData";
  static const platform = MethodChannel(channelName);
  @override
  Future<List<Audio>> getAllAudio() async {
    try {
      final audioList = await platform.invokeMethod<List<dynamic>?>(
        getAllAudioName,
      );
      if (audioList != null) {
        final audioDtos = audioList
            .map((e) =>
                AudioDto.fromJson(Map<String, dynamic>.from(e)).toDomain())
            .toList();

        return audioDtos;
      }
      return [];
    } catch (e) {
      log(e.toString(), name: "PlatformRepositoryImpl-getAllAudio");
      throw const PlatFormChannelFailure.platFormFailure();
    }
  }

  @override
  Future<AudioImage> getAudioMetaData({required String path}) async {
    try {
      final image =
          await platform.invokeMethod(getAlbumMetaData, {"path": path});

      if (image != null) {
        return ImageDto(byteImage: image).toDomain();
      } else {
        throw const PlatFormChannelFailure.metaDataFailure();
      }
    } catch (e) {
      throw const PlatFormChannelFailure.metaDataFailure();
    }
  }

  @override
  Future<void> deleteFile({required String path}) async {
    try {
      if (await Permission.manageExternalStorage.isGranted) {
        if (File(path).existsSync()) {
          File(path).deleteSync();
        }
      } else {
        await Permission.manageExternalStorage.request();
        if (File(path).existsSync()) {
          File(path).deleteSync();
        }
      }
    } catch (e) {
      log(e.toString());
      throw const PlatFormChannelFailure.deleteFailure();
    }
  }
}
