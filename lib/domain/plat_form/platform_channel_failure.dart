import 'package:freezed_annotation/freezed_annotation.dart';
part 'platform_channel_failure.freezed.dart';

@freezed
class PlatFormChannelFailure with _$PlatFormChannelFailure{
  const factory PlatFormChannelFailure.platFormFailure() = _PlatFormFailure;
  const factory PlatFormChannelFailure.metaDataFailure() = _MetaDataFailure;
  const factory PlatFormChannelFailure.deleteFailure() = _DeleteFailure;
}