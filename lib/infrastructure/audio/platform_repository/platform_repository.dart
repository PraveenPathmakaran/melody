import 'package:flutter/services.dart';
import 'package:melody/domain/songs/audio_failure.dart';
import 'package:melody/infrastructure/audio/audio_dtos.dart';
import 'package:melody/infrastructure/audio/platform_repository/i_platform_repository.dart';

import '../../../domain/songs/audio.dart';

class PlatformRepository implements IPlatformRepository {
  static const String channelName = "audio";
  static const String functionName = "getAudios";
  static int pageNumber = 0;
  static const platform = MethodChannel(channelName);
  @override
  Future<List<Audio>> getAllAudio() async {
    try {
      final result = await platform.invokeMethod<List<dynamic>?>(
          functionName, {"pageNumber": pageNumber});
      pageNumber++;

      if (result != null) {
        final audioDtos = result
            .map((e) =>
                AudioDto.fromJson(Map<String, dynamic>.from(e)).toDomain())
            .toList();

        return audioDtos;
      } else {
        return [];
      }
    } catch (e) {
      throw const AudioFailure.platFormFailure();
    }
  }
}
