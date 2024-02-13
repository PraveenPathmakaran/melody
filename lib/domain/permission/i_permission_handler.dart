import 'package:dartz/dartz.dart';

import 'permission_failure.dart';

abstract interface class IPermissionHandler {
  Future<Either<PermissionFailures, Unit>> checkAudioPermission();
  Future<Either<PermissionFailures, Unit>> requestAudioPermission();
  Future<Either<PermissionFailures, Unit>> requestOpenAppSettings();
}
