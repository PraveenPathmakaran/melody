import 'package:freezed_annotation/freezed_annotation.dart';

part 'permission_failure.freezed.dart';

@freezed
class PermissionFailures with _$PermissionFailures {
  const factory PermissionFailures.deniedByUser() = _DeniedByUser;
  const factory PermissionFailures.permanentlyDeniedByUser() =
      _PermanentlyDeniedByUser;
  const factory PermissionFailures.platFormFailure() = _PlatFormFailure;
}
