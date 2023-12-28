import 'dart:developer';

import 'package:dartz/dartz.dart';
import 'package:flutter/services.dart';
import 'package:melody/domain/songs/audio.dart';
import 'package:melody/domain/songs/i_audio_repository.dart';

import '../../domain/songs/audio_failure.dart';
import 'audio_dtos.dart';

class AudioRepository implements IAudioRepository {
  static const String channelName = "audio";
  static const String functionName = "getAudios";
  static const platform = MethodChannel(channelName);
  @override
  Future<Either<AudiFailure, List<Audio>>> getAllAudio() async {
    try {
      final allAudios =
          await platform.invokeMethod<List<dynamic>>(functionName);
      if (allAudios != null) {
        List<Audio> songs = allAudios
            .map((e) =>
                AudioDto.fromJson(Map<String, dynamic>.from(e)).toDomain())
            .toList();

        return right(songs);
      }

      return left(const AudiFailure.platFormFailure());
    } on PlatformException catch (e) {
      log(e.toString());
      return left(const AudiFailure.platFormFailure());
    }
  }
}
