import 'package:freezed_annotation/freezed_annotation.dart';
part 'device_info_failure.freezed.dart';

@freezed
class DeviceInfoFailure with _$DeviceInfoFailure{
  const factory DeviceInfoFailure.platformFailure() = _PlatformFailure;
}