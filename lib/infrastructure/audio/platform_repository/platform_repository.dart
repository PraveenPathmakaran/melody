import 'dart:developer';

import 'package:flutter/services.dart';
import 'package:melody/domain/songs/audio.dart';
import 'package:melody/domain/songs/audio_failure.dart';
import 'package:melody/infrastructure/audio/platform_repository/i_platform_repository.dart';

import '../audio_dtos.dart';

class PlatformRepository implements IPlatformRepository {
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
      log(e.toString(), name: "PlatformRepository-getAllAudio");
      throw const AudioFailure.platFormFailure();
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
        return AudioImage.empty();
      }
    } catch (e) {
      log(e.toString(), name: "PlatformRepository-getAudioMetaData");
      throw const AudioFailure.platFormFailure();
    }
  }
}
