// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'favourite_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$FavouriteEvent {
  PlayListName get playListName => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<Audio> audios, PlayListName playListName)
        loadAudio,
    required TResult Function(Audio audio, PlayListName playListName)
        favouriteButtonClicked,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<Audio> audios, PlayListName playListName)? loadAudio,
    TResult? Function(Audio audio, PlayListName playListName)?
        favouriteButtonClicked,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<Audio> audios, PlayListName playListName)? loadAudio,
    TResult Function(Audio audio, PlayListName playListName)?
        favouriteButtonClicked,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoadAudio value) loadAudio,
    required TResult Function(_FavouriteButtonClicked value)
        favouriteButtonClicked,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoadAudio value)? loadAudio,
    TResult? Function(_FavouriteButtonClicked value)? favouriteButtonClicked,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoadAudio value)? loadAudio,
    TResult Function(_FavouriteButtonClicked value)? favouriteButtonClicked,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $FavouriteEventCopyWith<FavouriteEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FavouriteEventCopyWith<$Res> {
  factory $FavouriteEventCopyWith(
          FavouriteEvent value, $Res Function(FavouriteEvent) then) =
      _$FavouriteEventCopyWithImpl<$Res, FavouriteEvent>;
  @useResult
  $Res call({PlayListName playListName});
}

/// @nodoc
class _$FavouriteEventCopyWithImpl<$Res, $Val extends FavouriteEvent>
    implements $FavouriteEventCopyWith<$Res> {
  _$FavouriteEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? playListName = null,
  }) {
    return _then(_value.copyWith(
      playListName: null == playListName
          ? _value.playListName
          : playListName // ignore: cast_nullable_to_non_nullable
              as PlayListName,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$LoadAudioImplCopyWith<$Res>
    implements $FavouriteEventCopyWith<$Res> {
  factory _$$LoadAudioImplCopyWith(
          _$LoadAudioImpl value, $Res Function(_$LoadAudioImpl) then) =
      __$$LoadAudioImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<Audio> audios, PlayListName playListName});
}

/// @nodoc
class __$$LoadAudioImplCopyWithImpl<$Res>
    extends _$FavouriteEventCopyWithImpl<$Res, _$LoadAudioImpl>
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
    return 'FavouriteEvent.loadAudio(audios: $audios, playListName: $playListName)';
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
    required TResult Function(Audio audio, PlayListName playListName)
        favouriteButtonClicked,
  }) {
    return loadAudio(audios, playListName);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<Audio> audios, PlayListName playListName)? loadAudio,
    TResult? Function(Audio audio, PlayListName playListName)?
        favouriteButtonClicked,
  }) {
    return loadAudio?.call(audios, playListName);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<Audio> audios, PlayListName playListName)? loadAudio,
    TResult Function(Audio audio, PlayListName playListName)?
        favouriteButtonClicked,
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
    required TResult Function(_FavouriteButtonClicked value)
        favouriteButtonClicked,
  }) {
    return loadAudio(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoadAudio value)? loadAudio,
    TResult? Function(_FavouriteButtonClicked value)? favouriteButtonClicked,
  }) {
    return loadAudio?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoadAudio value)? loadAudio,
    TResult Function(_FavouriteButtonClicked value)? favouriteButtonClicked,
    required TResult orElse(),
  }) {
    if (loadAudio != null) {
      return loadAudio(this);
    }
    return orElse();
  }
}

abstract class _LoadAudio implements FavouriteEvent {
  const factory _LoadAudio(
      {required final List<Audio> audios,
      required final PlayListName playListName}) = _$LoadAudioImpl;

  List<Audio> get audios;
  @override
  PlayListName get playListName;
  @override
  @JsonKey(ignore: true)
  _$$LoadAudioImplCopyWith<_$LoadAudioImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$FavouriteButtonClickedImplCopyWith<$Res>
    implements $FavouriteEventCopyWith<$Res> {
  factory _$$FavouriteButtonClickedImplCopyWith(
          _$FavouriteButtonClickedImpl value,
          $Res Function(_$FavouriteButtonClickedImpl) then) =
      __$$FavouriteButtonClickedImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Audio audio, PlayListName playListName});

  $AudioCopyWith<$Res> get audio;
}

/// @nodoc
class __$$FavouriteButtonClickedImplCopyWithImpl<$Res>
    extends _$FavouriteEventCopyWithImpl<$Res, _$FavouriteButtonClickedImpl>
    implements _$$FavouriteButtonClickedImplCopyWith<$Res> {
  __$$FavouriteButtonClickedImplCopyWithImpl(
      _$FavouriteButtonClickedImpl _value,
      $Res Function(_$FavouriteButtonClickedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? audio = null,
    Object? playListName = null,
  }) {
    return _then(_$FavouriteButtonClickedImpl(
      audio: null == audio
          ? _value.audio
          : audio // ignore: cast_nullable_to_non_nullable
              as Audio,
      playListName: null == playListName
          ? _value.playListName
          : playListName // ignore: cast_nullable_to_non_nullable
              as PlayListName,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $AudioCopyWith<$Res> get audio {
    return $AudioCopyWith<$Res>(_value.audio, (value) {
      return _then(_value.copyWith(audio: value));
    });
  }
}

/// @nodoc

class _$FavouriteButtonClickedImpl implements _FavouriteButtonClicked {
  const _$FavouriteButtonClickedImpl(
      {required this.audio, required this.playListName});

  @override
  final Audio audio;
  @override
  final PlayListName playListName;

  @override
  String toString() {
    return 'FavouriteEvent.favouriteButtonClicked(audio: $audio, playListName: $playListName)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FavouriteButtonClickedImpl &&
            (identical(other.audio, audio) || other.audio == audio) &&
            (identical(other.playListName, playListName) ||
                other.playListName == playListName));
  }

  @override
  int get hashCode => Object.hash(runtimeType, audio, playListName);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FavouriteButtonClickedImplCopyWith<_$FavouriteButtonClickedImpl>
      get copyWith => __$$FavouriteButtonClickedImplCopyWithImpl<
          _$FavouriteButtonClickedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<Audio> audios, PlayListName playListName)
        loadAudio,
    required TResult Function(Audio audio, PlayListName playListName)
        favouriteButtonClicked,
  }) {
    return favouriteButtonClicked(audio, playListName);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<Audio> audios, PlayListName playListName)? loadAudio,
    TResult? Function(Audio audio, PlayListName playListName)?
        favouriteButtonClicked,
  }) {
    return favouriteButtonClicked?.call(audio, playListName);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<Audio> audios, PlayListName playListName)? loadAudio,
    TResult Function(Audio audio, PlayListName playListName)?
        favouriteButtonClicked,
    required TResult orElse(),
  }) {
    if (favouriteButtonClicked != null) {
      return favouriteButtonClicked(audio, playListName);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoadAudio value) loadAudio,
    required TResult Function(_FavouriteButtonClicked value)
        favouriteButtonClicked,
  }) {
    return favouriteButtonClicked(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoadAudio value)? loadAudio,
    TResult? Function(_FavouriteButtonClicked value)? favouriteButtonClicked,
  }) {
    return favouriteButtonClicked?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoadAudio value)? loadAudio,
    TResult Function(_FavouriteButtonClicked value)? favouriteButtonClicked,
    required TResult orElse(),
  }) {
    if (favouriteButtonClicked != null) {
      return favouriteButtonClicked(this);
    }
    return orElse();
  }
}

abstract class _FavouriteButtonClicked implements FavouriteEvent {
  const factory _FavouriteButtonClicked(
      {required final Audio audio,
      required final PlayListName playListName}) = _$FavouriteButtonClickedImpl;

  Audio get audio;
  @override
  PlayListName get playListName;
  @override
  @JsonKey(ignore: true)
  _$$FavouriteButtonClickedImplCopyWith<_$FavouriteButtonClickedImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$FavouriteState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(List<Audio> audioList, List<Audio> newList)
        loaded,
    required TResult Function() error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(List<Audio> audioList, List<Audio> newList)? loaded,
    TResult? Function()? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<Audio> audioList, List<Audio> newList)? loaded,
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
abstract class $FavouriteStateCopyWith<$Res> {
  factory $FavouriteStateCopyWith(
          FavouriteState value, $Res Function(FavouriteState) then) =
      _$FavouriteStateCopyWithImpl<$Res, FavouriteState>;
}

/// @nodoc
class _$FavouriteStateCopyWithImpl<$Res, $Val extends FavouriteState>
    implements $FavouriteStateCopyWith<$Res> {
  _$FavouriteStateCopyWithImpl(this._value, this._then);

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
    extends _$FavouriteStateCopyWithImpl<$Res, _$LoadingImpl>
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
    return 'FavouriteState.loading()';
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
    required TResult Function(List<Audio> audioList, List<Audio> newList)
        loaded,
    required TResult Function() error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(List<Audio> audioList, List<Audio> newList)? loaded,
    TResult? Function()? error,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<Audio> audioList, List<Audio> newList)? loaded,
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

abstract class _Loading implements FavouriteState {
  const factory _Loading() = _$LoadingImpl;
}

/// @nodoc
abstract class _$$LoadedImplCopyWith<$Res> {
  factory _$$LoadedImplCopyWith(
          _$LoadedImpl value, $Res Function(_$LoadedImpl) then) =
      __$$LoadedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<Audio> audioList, List<Audio> newList});
}

/// @nodoc
class __$$LoadedImplCopyWithImpl<$Res>
    extends _$FavouriteStateCopyWithImpl<$Res, _$LoadedImpl>
    implements _$$LoadedImplCopyWith<$Res> {
  __$$LoadedImplCopyWithImpl(
      _$LoadedImpl _value, $Res Function(_$LoadedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? audioList = null,
    Object? newList = null,
  }) {
    return _then(_$LoadedImpl(
      audioList: null == audioList
          ? _value._audioList
          : audioList // ignore: cast_nullable_to_non_nullable
              as List<Audio>,
      newList: null == newList
          ? _value._newList
          : newList // ignore: cast_nullable_to_non_nullable
              as List<Audio>,
    ));
  }
}

/// @nodoc

class _$LoadedImpl implements _Loaded {
  const _$LoadedImpl(
      {required final List<Audio> audioList,
      required final List<Audio> newList})
      : _audioList = audioList,
        _newList = newList;

  final List<Audio> _audioList;
  @override
  List<Audio> get audioList {
    if (_audioList is EqualUnmodifiableListView) return _audioList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_audioList);
  }

  final List<Audio> _newList;
  @override
  List<Audio> get newList {
    if (_newList is EqualUnmodifiableListView) return _newList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_newList);
  }

  @override
  String toString() {
    return 'FavouriteState.loaded(audioList: $audioList, newList: $newList)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoadedImpl &&
            const DeepCollectionEquality()
                .equals(other._audioList, _audioList) &&
            const DeepCollectionEquality().equals(other._newList, _newList));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_audioList),
      const DeepCollectionEquality().hash(_newList));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LoadedImplCopyWith<_$LoadedImpl> get copyWith =>
      __$$LoadedImplCopyWithImpl<_$LoadedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(List<Audio> audioList, List<Audio> newList)
        loaded,
    required TResult Function() error,
  }) {
    return loaded(audioList, newList);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(List<Audio> audioList, List<Audio> newList)? loaded,
    TResult? Function()? error,
  }) {
    return loaded?.call(audioList, newList);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<Audio> audioList, List<Audio> newList)? loaded,
    TResult Function()? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(audioList, newList);
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

abstract class _Loaded implements FavouriteState {
  const factory _Loaded(
      {required final List<Audio> audioList,
      required final List<Audio> newList}) = _$LoadedImpl;

  List<Audio> get audioList;
  List<Audio> get newList;
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
    extends _$FavouriteStateCopyWithImpl<$Res, _$ErrorImpl>
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
    return 'FavouriteState.error()';
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
    required TResult Function(List<Audio> audioList, List<Audio> newList)
        loaded,
    required TResult Function() error,
  }) {
    return error();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(List<Audio> audioList, List<Audio> newList)? loaded,
    TResult? Function()? error,
  }) {
    return error?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<Audio> audioList, List<Audio> newList)? loaded,
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

abstract class _Error implements FavouriteState {
  const factory _Error() = _$ErrorImpl;
}
