import 'dart:developer';

import 'package:dartz/dartz.dart';
import 'package:device_info_plus/device_info_plus.dart';
import 'package:melody/domain/device_info/device_info_failure.dart';

import '../../../domain/device_info/i_device_info.dart';

class DeviceInformation implements IDeviceInformation {
  final DeviceInfoPlugin _deviceInfoPlugin;
  DeviceInformation(
    this._deviceInfoPlugin,
  );

  @override
  Future<Either<DeviceInfoFailure, int>> getAndroidVersion() async {
    try {
      AndroidDeviceInfo androidInfo = await _deviceInfoPlugin.androidInfo;
      return right(androidInfo.version.sdkInt);
    } catch (e) {
      log(e.toString(), name: "DeviceInformation - getAndroidVersion");
      return left(const DeviceInfoFailure.platformFailure());
    }
  }
}
