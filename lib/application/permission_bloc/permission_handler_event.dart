part of 'permission_handler_bloc.dart';

@freezed
class PermissionHandlerEvent with _$PermissionHandlerEvent {
  const factory PermissionHandlerEvent.checkPermission() = _CheckPermission;
  const factory PermissionHandlerEvent.openAppSettings() = _OpenAppSettings;
}