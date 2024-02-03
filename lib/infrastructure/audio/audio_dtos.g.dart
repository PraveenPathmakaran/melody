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
      title: json['title'] as String?,
      artist: json['artist'] as String?,
      image: const Uint8ListConverter().fromJson(json['image'] as List<int>?),
    );

Map<String, dynamic> _$$AudioDtoImplToJson(_$AudioDtoImpl instance) =>
    <String, dynamic>{
      'title': instance.title,
      'artist': instance.artist,
      'image': const Uint8ListConverter().toJson(instance.image),
    };
