import 'dart:developer';

import 'package:dartz/dartz.dart';
import 'package:melody/domain/device_info/i_device_info.dart';
import 'package:permission_handler/permission_handler.dart';

import '../../../domain/permission/i_permission_handler.dart';
import '../../../domain/permission/permission_failure.dart';
import '../../../injection_container.dart';

//check audio permission
//if permission is denied then call request audio permission
//if permanently denied then open app Settings

class PermissionsHandler implements IPermissionHandler {
  final Permission _storagePermission;
  final Permission _audioPermission;
  // final Permission _manageExternalPermission;

  PermissionsHandler(
    this._storagePermission,
    this._audioPermission,
    //this._manageExternalPermission,
  );

  @override
  Future<Either<PermissionFailures, Unit>> checkAudioPermission() async {
    try {
      final androidVersion =
          await getIt<IDeviceInformation>().getAndroidVersion();
      final version = androidVersion
          .getOrElse(() => throw const PermissionFailures.platFormFailure());
      PermissionStatus permissionStatus = PermissionStatus.denied;
      if (version < 32) {
        permissionStatus = await _storagePermission.status;
      } else {
        permissionStatus = await _audioPermission.status;
      }
      if (permissionStatus.isDenied) {
        return await requestAudioPermission();
      } else if (permissionStatus.isPermanentlyDenied) {
        return left(const PermissionFailures.permanentlyDeniedByUser());
      } else {
        return right(unit);
      }
    } catch (e) {
      log(e.toString(), name: 'permissionhandler-checkAudioPermission');
      return left(const PermissionFailures.platFormFailure());
    }
  }

  @override
  Future<Either<PermissionFailures, Unit>> requestAudioPermission() async {
    try {
      final androidVersion =
          await getIt<IDeviceInformation>().getAndroidVersion();
      final version = androidVersion
          .getOrElse(() => throw const PermissionFailures.platFormFailure());
      PermissionStatus status = PermissionStatus.denied;
      if (version < 32) {
        status = await _storagePermission.request();
      } else {
        status = await _audioPermission.request();
        // status = await _manageExternalPermission.request();
      }
      if (status.isGranted) {
        return right(unit);
      }

      return left(const PermissionFailures.deniedByUser());
    } catch (e) {
      log(e.toString(), name: 'permissionhandler-requestAudioPermission');
      return left(const PermissionFailures.platFormFailure());
    }
  }

  @override
  Future<Either<PermissionFailures, Unit>> requestOpenAppSettings() async {
    try {
      final openSettingsStatus = await openAppSettings();
      if (openSettingsStatus) {
        return right(unit);
      } else {
        return left(const PermissionFailures.platFormFailure());
      }
    } catch (e) {
      log(e.toString(), name: 'permissionhandler-requestOpenAppSettings');
      return left(const PermissionFailures.platFormFailure());
    }
  }
}
