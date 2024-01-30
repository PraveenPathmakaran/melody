// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'audio_dtos.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Uint8ListConverter _$Uint8ListConverterFromJson(Map<String, dynamic> json) =>
    Uint8ListConverter();

Map<String, dynamic> _$Uint8ListConverterToJson(Uint8ListConverter instance) =>
    <String, dynamic>{};

_$AudioDtoImpl _$$AudioDtoImplFromJson(Map<String, dynamic> json) =>
    _$AudioDtoImpl(
      uid: json['uid'] as String?,
      name: json['name'] as String?,
      artist: json['artist'] as String?,
      path: json['path'] as String?,
      image: const Uint8ListConverter().fromJson(json['image'] as List<int>?),
    );

Map<String, dynamic> _$$AudioDtoImplToJson(_$AudioDtoImpl instance) =>
    <String, dynamic>{
      'uid': instance.uid,
      'name': instance.name,
      'artist': instance.artist,
      'path': instance.path,
      'image': const Uint8ListConverter().toJson(instance.image),
    };
