// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'play_list_audio_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$PlayListAudioEvent {
  List<Audio> get audios => throw _privateConstructorUsedError;
  PlayListName get playListName => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<Audio> audios, PlayListName playListName)
        loadAudio,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<Audio> audios, PlayListName playListName)? loadAudio,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<Audio> audios, PlayListName playListName)? loadAudio,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoadAudio value) loadAudio,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoadAudio value)? loadAudio,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoadAudio value)? loadAudio,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $PlayListAudioEventCopyWith<PlayListAudioEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PlayListAudioEventCopyWith<$Res> {
  factory $PlayListAudioEventCopyWith(
          PlayListAudioEvent value, $Res Function(PlayListAudioEvent) then) =
      _$PlayListAudioEventCopyWithImpl<$Res, PlayListAudioEvent>;
  @useResult
  $Res call({List<Audio> audios, PlayListName playListName});
}

/// @nodoc
class _$PlayListAudioEventCopyWithImpl<$Res, $Val extends PlayListAudioEvent>
    implements $PlayListAudioEventCopyWith<$Res> {
  _$PlayListAudioEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? audios = null,
    Object? playListName = null,
  }) {
    return _then(_value.copyWith(
      audios: null == audios
          ? _value.audios
          : audios // ignore: cast_nullable_to_non_nullable
              as List<Audio>,
      playListName: null == playListName
          ? _value.playListName
          : playListName // ignore: cast_nullable_to_non_nullable
              as PlayListName,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$LoadAudioImplCopyWith<$Res>
    implements $PlayListAudioEventCopyWith<$Res> {
  factory _$$LoadAudioImplCopyWith(
          _$LoadAudioImpl value, $Res Function(_$LoadAudioImpl) then) =
      __$$LoadAudioImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<Audio> audios, PlayListName playListName});
}

/// @nodoc
class __$$LoadAudioImplCopyWithImpl<$Res>
    extends _$PlayListAudioEventCopyWithImpl<$Res, _$LoadAudioImpl>
    implements _$$LoadAudioImplCopyWith<$Res> {
  __$$LoadAudioImplCopyWithImpl(
      _$LoadAudioImpl _value, $Res Function(_$LoadAudioImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? audios = null,
    Object? playListName = null,
  }) {
    return _then(_$LoadAudioImpl(
      audios: null == audios
          ? _value._audios
          : audios // ignore: cast_nullable_to_non_nullable
              as List<Audio>,
      playListName: null == playListName
          ? _value.playListName
          : playListName // ignore: cast_nullable_to_non_nullable
              as PlayListName,
    ));
  }
}

/// @nodoc

class _$LoadAudioImpl implements _LoadAudio {
  const _$LoadAudioImpl(
      {required final List<Audio> audios, required this.playListName})
      : _audios = audios;

  final List<Audio> _audios;
  @override
  List<Audio> get audios {
    if (_audios is EqualUnmodifiableListView) return _audios;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_audios);
  }

  @override
  final PlayListName playListName;

  @override
  String toString() {
    return 'PlayListAudioEvent.loadAudio(audios: $audios, playListName: $playListName)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoadAudioImpl &&
            const DeepCollectionEquality().equals(other._audios, _audios) &&
            (identical(other.playListName, playListName) ||
                other.playListName == playListName));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_audios), playListName);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LoadAudioImplCopyWith<_$LoadAudioImpl> get copyWith =>
      __$$LoadAudioImplCopyWithImpl<_$LoadAudioImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<Audio> audios, PlayListName playListName)
        loadAudio,
  }) {
    return loadAudio(audios, playListName);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<Audio> audios, PlayListName playListName)? loadAudio,
  }) {
    return loadAudio?.call(audios, playListName);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<Audio> audios, PlayListName playListName)? loadAudio,
    required TResult orElse(),
  }) {
    if (loadAudio != null) {
      return loadAudio(audios, playListName);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoadAudio value) loadAudio,
  }) {
    return loadAudio(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoadAudio value)? loadAudio,
  }) {
    return loadAudio?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoadAudio value)? loadAudio,
    required TResult orElse(),
  }) {
    if (loadAudio != null) {
      return loadAudio(this);
    }
    return orElse();
  }
}

abstract class _LoadAudio implements PlayListAudioEvent {
  const factory _LoadAudio(
      {required final List<Audio> audios,
      required final PlayListName playListName}) = _$LoadAudioImpl;

  @override
  List<Audio> get audios;
  @override
  PlayListName get playListName;
  @override
  @JsonKey(ignore: true)
  _$$LoadAudioImplCopyWith<_$LoadAudioImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$PlayListAudioState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(List<Audio> audioList, List<Audio> playList)
        loaded,
    required TResult Function() error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(List<Audio> audioList, List<Audio> playList)? loaded,
    TResult? Function()? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<Audio> audioList, List<Audio> playList)? loaded,
    TResult Function()? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Loading value) loading,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_Error value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_Error value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PlayListAudioStateCopyWith<$Res> {
  factory $PlayListAudioStateCopyWith(
          PlayListAudioState value, $Res Function(PlayListAudioState) then) =
      _$PlayListAudioStateCopyWithImpl<$Res, PlayListAudioState>;
}

/// @nodoc
class _$PlayListAudioStateCopyWithImpl<$Res, $Val extends PlayListAudioState>
    implements $PlayListAudioStateCopyWith<$Res> {
  _$PlayListAudioStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$LoadingImplCopyWith<$Res> {
  factory _$$LoadingImplCopyWith(
          _$LoadingImpl value, $Res Function(_$LoadingImpl) then) =
      __$$LoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoadingImplCopyWithImpl<$Res>
    extends _$PlayListAudioStateCopyWithImpl<$Res, _$LoadingImpl>
    implements _$$LoadingImplCopyWith<$Res> {
  __$$LoadingImplCopyWithImpl(
      _$LoadingImpl _value, $Res Function(_$LoadingImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$LoadingImpl implements _Loading {
  const _$LoadingImpl();

  @override
  String toString() {
    return 'PlayListAudioState.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(List<Audio> audioList, List<Audio> playList)
        loaded,
    required TResult Function() error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(List<Audio> audioList, List<Audio> playList)? loaded,
    TResult? Function()? error,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<Audio> audioList, List<Audio> playList)? loaded,
    TResult Function()? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Loading value) loading,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_Error value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_Error value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _Loading implements PlayListAudioState {
  const factory _Loading() = _$LoadingImpl;
}

/// @nodoc
abstract class _$$LoadedImplCopyWith<$Res> {
  factory _$$LoadedImplCopyWith(
          _$LoadedImpl value, $Res Function(_$LoadedImpl) then) =
      __$$LoadedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<Audio> audioList, List<Audio> playList});
}

/// @nodoc
class __$$LoadedImplCopyWithImpl<$Res>
    extends _$PlayListAudioStateCopyWithImpl<$Res, _$LoadedImpl>
    implements _$$LoadedImplCopyWith<$Res> {
  __$$LoadedImplCopyWithImpl(
      _$LoadedImpl _value, $Res Function(_$LoadedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? audioList = null,
    Object? playList = null,
  }) {
    return _then(_$LoadedImpl(
      audioList: null == audioList
          ? _value._audioList
          : audioList // ignore: cast_nullable_to_non_nullable
              as List<Audio>,
      playList: null == playList
          ? _value._playList
          : playList // ignore: cast_nullable_to_non_nullable
              as List<Audio>,
    ));
  }
}

/// @nodoc

class _$LoadedImpl implements _Loaded {
  const _$LoadedImpl(
      {required final List<Audio> audioList,
      required final List<Audio> playList})
      : _audioList = audioList,
        _playList = playList;

  final List<Audio> _audioList;
  @override
  List<Audio> get audioList {
    if (_audioList is EqualUnmodifiableListView) return _audioList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_audioList);
  }

  final List<Audio> _playList;
  @override
  List<Audio> get playList {
    if (_playList is EqualUnmodifiableListView) return _playList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_playList);
  }

  @override
  String toString() {
    return 'PlayListAudioState.loaded(audioList: $audioList, playList: $playList)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoadedImpl &&
            const DeepCollectionEquality()
                .equals(other._audioList, _audioList) &&
            const DeepCollectionEquality().equals(other._playList, _playList));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_audioList),
      const DeepCollectionEquality().hash(_playList));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LoadedImplCopyWith<_$LoadedImpl> get copyWith =>
      __$$LoadedImplCopyWithImpl<_$LoadedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(List<Audio> audioList, List<Audio> playList)
        loaded,
    required TResult Function() error,
  }) {
    return loaded(audioList, playList);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(List<Audio> audioList, List<Audio> playList)? loaded,
    TResult? Function()? error,
  }) {
    return loaded?.call(audioList, playList);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<Audio> audioList, List<Audio> playList)? loaded,
    TResult Function()? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(audioList, playList);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Loading value) loading,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_Error value) error,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_Error value)? error,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class _Loaded implements PlayListAudioState {
  const factory _Loaded(
      {required final List<Audio> audioList,
      required final List<Audio> playList}) = _$LoadedImpl;

  List<Audio> get audioList;
  List<Audio> get playList;
  @JsonKey(ignore: true)
  _$$LoadedImplCopyWith<_$LoadedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ErrorImplCopyWith<$Res> {
  factory _$$ErrorImplCopyWith(
          _$ErrorImpl value, $Res Function(_$ErrorImpl) then) =
      __$$ErrorImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ErrorImplCopyWithImpl<$Res>
    extends _$PlayListAudioStateCopyWithImpl<$Res, _$ErrorImpl>
    implements _$$ErrorImplCopyWith<$Res> {
  __$$ErrorImplCopyWithImpl(
      _$ErrorImpl _value, $Res Function(_$ErrorImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$ErrorImpl implements _Error {
  const _$ErrorImpl();

  @override
  String toString() {
    return 'PlayListAudioState.error()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ErrorImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(List<Audio> audioList, List<Audio> playList)
        loaded,
    required TResult Function() error,
  }) {
    return error();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(List<Audio> audioList, List<Audio> playList)? loaded,
    TResult? Function()? error,
  }) {
    return error?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<Audio> audioList, List<Audio> playList)? loaded,
    TResult Function()? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Loading value) loading,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_Error value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_Error value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _Error implements PlayListAudioState {
  const factory _Error() = _$ErrorImpl;
}
