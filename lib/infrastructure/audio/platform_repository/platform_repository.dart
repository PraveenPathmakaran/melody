import 'dart:developer';
import 'dart:isolate';

import 'package:flutter/services.dart';
import 'package:melody/domain/songs/audio_failure.dart';
import 'package:melody/infrastructure/audio/platform_repository/i_platform_repository.dart';

import '../../../domain/songs/audio.dart';
import '../audio_dtos.dart';

class PlatformRepository implements IPlatformRepository {
  static const String channelName = "audio";
  static const String functionName = "getAudios";
  static int pageNumber = 0;
  static const platform = MethodChannel(channelName);
  @override
  Future<List<Audio>> getAllAudio() async {
    try {
      final ReceivePort receivePort = ReceivePort();
      RootIsolateToken rootToken = RootIsolateToken.instance!;
      await Isolate.spawn(
          invokeMethod, [receivePort.sendPort, pageNumber, rootToken]);

      final value = await receivePort.first;
      value as List<dynamic>?;

      if (value != null) {
        pageNumber++;
        final audioDtos = value
            .map((e) =>
                AudioDto.fromJson(Map<String, dynamic>.from(e)).toDomain())
            .toList();
        return audioDtos;
      } else {
        return [];
      }
    } catch (e) {
      log(e.toString());
      throw const AudioFailure.platFormFailure();
    }
  }

  Future<List<dynamic>?> invokeMethod(List<dynamic> args) async {
    BackgroundIsolateBinaryMessenger.ensureInitialized(args[2]);
    SendPort resultPort = args[0];
    final data = await platform
        .invokeMethod<List<dynamic>?>(functionName, {"pageNumber": args[1]});
    Isolate.exit(resultPort, data);
  }
}
