import 'dart:developer';

import 'package:dartz/dartz.dart';
import 'package:melody/domain/permission/i_permission_handler.dart';
import 'package:melody/domain/permission/permission_failure.dart';
import 'package:permission_handler/permission_handler.dart';

//check audio permission
//if permission is denied then call request audio permission
//if permanently denied then open app Settings

class PermissionsHandler implements IPermissionHandler {
  final Permission permission;

  PermissionsHandler({required this.permission});

  @override
  Future<Either<PermissionFailures, Unit>> checkAudioPermission() async {
    try {
      final permissionStatus = await permission.status;
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
      final status = await permission.request();
      if (status.isGranted) return right(unit);

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
