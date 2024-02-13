import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../domain/permission/i_permission_handler.dart';

part 'permission_handler_bloc.freezed.dart';
part 'permission_handler_event.dart';
part 'permission_handler_state.dart';

class PermissionHandlerBloc
    extends Bloc<PermissionHandlerEvent, PermissionHandlerState> {
  final IPermissionHandler _permissionHandler;
  PermissionHandlerBloc(this._permissionHandler)
      : super(const PermissionHandlerState.initial()) {
    on<PermissionHandlerEvent>((event, emit) async {
      await event.map(
        checkPermission: (value) async {
          final permission = await _permissionHandler.checkAudioPermission();
          emit(permission.fold(
              (f) => f.map(
                  deniedByUser: (_) => const PermissionHandlerState.denied(),
                  permanentlyDeniedByUser: (_) =>
                      const PermissionHandlerState.permanentlyDenied(),
                  platFormFailure: (_) =>
                      const PermissionHandlerState.permanentlyDenied()),
              (r) => const PermissionHandlerState.granted()));
        },
        openAppSettings: (value) async {
          final permission = await _permissionHandler.requestOpenAppSettings();

          permission.fold(
              (f) => emit(f.map(
                  deniedByUser: (_) => const PermissionHandlerState.denied(),
                  permanentlyDeniedByUser: (_) =>
                      const PermissionHandlerState.permanentlyDenied(),
                  platFormFailure: (_) =>
                      const PermissionHandlerState.permanentlyDenied())),
              (r) {});
        },
      );
    });
  }
}
