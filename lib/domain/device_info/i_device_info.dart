import 'package:dartz/dartz.dart';
import 'package:melody/domain/device_info/device_info_failure.dart';

abstract interface class IDeviceInformation {
  Future<Either<DeviceInfoFailure, int>> getAndroidVersion();
}
