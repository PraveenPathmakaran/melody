part of 'permission_handler_bloc.dart';

@freezed
class PermissionHandlerState with _$PermissionHandlerState {
  const factory PermissionHandlerState.initial() = _Initial;
  const factory PermissionHandlerState.granted() = _Granted;
  const factory PermissionHandlerState.denied() = _Denied;
  const factory PermissionHandlerState.permanentlyDenied() = _PermanentlyDenied;
}
