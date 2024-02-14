// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'play_list_home_action_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$PlayListHomeActionEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() playListCreateButtonClick,
    required TResult Function(String playListName) playListNameChanged,
    required TResult Function(PlayListName playListName, AudioPath audioPath)
        addToPlayList,
    required TResult Function(
            PlayListName playListName, AudioPath audioPath, int index)
        removeAudioFromPlayList,
    required TResult Function(PlayListName playListName) deletePlaylist,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? playListCreateButtonClick,
    TResult? Function(String playListName)? playListNameChanged,
    TResult? Function(PlayListName playListName, AudioPath audioPath)?
        addToPlayList,
    TResult? Function(
            PlayListName playListName, AudioPath audioPath, int index)?
        removeAudioFromPlayList,
    TResult? Function(PlayListName playListName)? deletePlaylist,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? playListCreateButtonClick,
    TResult Function(String playListName)? playListNameChanged,
    TResult Function(PlayListName playListName, AudioPath audioPath)?
        addToPlayList,
    TResult Function(PlayListName playListName, AudioPath audioPath, int index)?
        removeAudioFromPlayList,
    TResult Function(PlayListName playListName)? deletePlaylist,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_PlayListCreateButtonClick value)
        playListCreateButtonClick,
    required TResult Function(_PlayListNameChanged value) playListNameChanged,
    required TResult Function(_AddToPlayList value) addToPlayList,
    required TResult Function(_RemoveAudioFromPlayList value)
        removeAudioFromPlayList,
    required TResult Function(_DeletePlaylist value) deletePlaylist,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_PlayListCreateButtonClick value)?
        playListCreateButtonClick,
    TResult? Function(_PlayListNameChanged value)? playListNameChanged,
    TResult? Function(_AddToPlayList value)? addToPlayList,
    TResult? Function(_RemoveAudioFromPlayList value)? removeAudioFromPlayList,
    TResult? Function(_DeletePlaylist value)? deletePlaylist,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_PlayListCreateButtonClick value)?
        playListCreateButtonClick,
    TResult Function(_PlayListNameChanged value)? playListNameChanged,
    TResult Function(_AddToPlayList value)? addToPlayList,
    TResult Function(_RemoveAudioFromPlayList value)? removeAudioFromPlayList,
    TResult Function(_DeletePlaylist value)? deletePlaylist,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PlayListHomeActionEventCopyWith<$Res> {
  factory $PlayListHomeActionEventCopyWith(PlayListHomeActionEvent value,
          $Res Function(PlayListHomeActionEvent) then) =
      _$PlayListHomeActionEventCopyWithImpl<$Res, PlayListHomeActionEvent>;
}

/// @nodoc
class _$PlayListHomeActionEventCopyWithImpl<$Res,
        $Val extends PlayListHomeActionEvent>
    implements $PlayListHomeActionEventCopyWith<$Res> {
  _$PlayListHomeActionEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$PlayListCreateButtonClickImplCopyWith<$Res> {
  factory _$$PlayListCreateButtonClickImplCopyWith(
          _$PlayListCreateButtonClickImpl value,
          $Res Function(_$PlayListCreateButtonClickImpl) then) =
      __$$PlayListCreateButtonClickImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$PlayListCreateButtonClickImplCopyWithImpl<$Res>
    extends _$PlayListHomeActionEventCopyWithImpl<$Res,
        _$PlayListCreateButtonClickImpl>
    implements _$$PlayListCreateButtonClickImplCopyWith<$Res> {
  __$$PlayListCreateButtonClickImplCopyWithImpl(
      _$PlayListCreateButtonClickImpl _value,
      $Res Function(_$PlayListCreateButtonClickImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$PlayListCreateButtonClickImpl implements _PlayListCreateButtonClick {
  const _$PlayListCreateButtonClickImpl();

  @override
  String toString() {
    return 'PlayListHomeActionEvent.playListCreateButtonClick()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PlayListCreateButtonClickImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() playListCreateButtonClick,
    required TResult Function(String playListName) playListNameChanged,
    required TResult Function(PlayListName playListName, AudioPath audioPath)
        addToPlayList,
    required TResult Function(
            PlayListName playListName, AudioPath audioPath, int index)
        removeAudioFromPlayList,
    required TResult Function(PlayListName playListName) deletePlaylist,
  }) {
    return playListCreateButtonClick();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? playListCreateButtonClick,
    TResult? Function(String playListName)? playListNameChanged,
    TResult? Function(PlayListName playListName, AudioPath audioPath)?
        addToPlayList,
    TResult? Function(
            PlayListName playListName, AudioPath audioPath, int index)?
        removeAudioFromPlayList,
    TResult? Function(PlayListName playListName)? deletePlaylist,
  }) {
    return playListCreateButtonClick?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? playListCreateButtonClick,
    TResult Function(String playListName)? playListNameChanged,
    TResult Function(PlayListName playListName, AudioPath audioPath)?
        addToPlayList,
    TResult Function(PlayListName playListName, AudioPath audioPath, int index)?
        removeAudioFromPlayList,
    TResult Function(PlayListName playListName)? deletePlaylist,
    required TResult orElse(),
  }) {
    if (playListCreateButtonClick != null) {
      return playListCreateButtonClick();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_PlayListCreateButtonClick value)
        playListCreateButtonClick,
    required TResult Function(_PlayListNameChanged value) playListNameChanged,
    required TResult Function(_AddToPlayList value) addToPlayList,
    required TResult Function(_RemoveAudioFromPlayList value)
        removeAudioFromPlayList,
    required TResult Function(_DeletePlaylist value) deletePlaylist,
  }) {
    return playListCreateButtonClick(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_PlayListCreateButtonClick value)?
        playListCreateButtonClick,
    TResult? Function(_PlayListNameChanged value)? playListNameChanged,
    TResult? Function(_AddToPlayList value)? addToPlayList,
    TResult? Function(_RemoveAudioFromPlayList value)? removeAudioFromPlayList,
    TResult? Function(_DeletePlaylist value)? deletePlaylist,
  }) {
    return playListCreateButtonClick?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_PlayListCreateButtonClick value)?
        playListCreateButtonClick,
    TResult Function(_PlayListNameChanged value)? playListNameChanged,
    TResult Function(_AddToPlayList value)? addToPlayList,
    TResult Function(_RemoveAudioFromPlayList value)? removeAudioFromPlayList,
    TResult Function(_DeletePlaylist value)? deletePlaylist,
    required TResult orElse(),
  }) {
    if (playListCreateButtonClick != null) {
      return playListCreateButtonClick(this);
    }
    return orElse();
  }
}

abstract class _PlayListCreateButtonClick implements PlayListHomeActionEvent {
  const factory _PlayListCreateButtonClick() = _$PlayListCreateButtonClickImpl;
}

/// @nodoc
abstract class _$$PlayListNameChangedImplCopyWith<$Res> {
  factory _$$PlayListNameChangedImplCopyWith(_$PlayListNameChangedImpl value,
          $Res Function(_$PlayListNameChangedImpl) then) =
      __$$PlayListNameChangedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String playListName});
}

/// @nodoc
class __$$PlayListNameChangedImplCopyWithImpl<$Res>
    extends _$PlayListHomeActionEventCopyWithImpl<$Res,
        _$PlayListNameChangedImpl>
    implements _$$PlayListNameChangedImplCopyWith<$Res> {
  __$$PlayListNameChangedImplCopyWithImpl(_$PlayListNameChangedImpl _value,
      $Res Function(_$PlayListNameChangedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? playListName = null,
  }) {
    return _then(_$PlayListNameChangedImpl(
      playListName: null == playListName
          ? _value.playListName
          : playListName // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$PlayListNameChangedImpl implements _PlayListNameChanged {
  const _$PlayListNameChangedImpl({required this.playListName});

  @override
  final String playListName;

  @override
  String toString() {
    return 'PlayListHomeActionEvent.playListNameChanged(playListName: $playListName)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PlayListNameChangedImpl &&
            (identical(other.playListName, playListName) ||
                other.playListName == playListName));
  }

  @override
  int get hashCode => Object.hash(runtimeType, playListName);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PlayListNameChangedImplCopyWith<_$PlayListNameChangedImpl> get copyWith =>
      __$$PlayListNameChangedImplCopyWithImpl<_$PlayListNameChangedImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() playListCreateButtonClick,
    required TResult Function(String playListName) playListNameChanged,
    required TResult Function(PlayListName playListName, AudioPath audioPath)
        addToPlayList,
    required TResult Function(
            PlayListName playListName, AudioPath audioPath, int index)
        removeAudioFromPlayList,
    required TResult Function(PlayListName playListName) deletePlaylist,
  }) {
    return playListNameChanged(playListName);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? playListCreateButtonClick,
    TResult? Function(String playListName)? playListNameChanged,
    TResult? Function(PlayListName playListName, AudioPath audioPath)?
        addToPlayList,
    TResult? Function(
            PlayListName playListName, AudioPath audioPath, int index)?
        removeAudioFromPlayList,
    TResult? Function(PlayListName playListName)? deletePlaylist,
  }) {
    return playListNameChanged?.call(playListName);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? playListCreateButtonClick,
    TResult Function(String playListName)? playListNameChanged,
    TResult Function(PlayListName playListName, AudioPath audioPath)?
        addToPlayList,
    TResult Function(PlayListName playListName, AudioPath audioPath, int index)?
        removeAudioFromPlayList,
    TResult Function(PlayListName playListName)? deletePlaylist,
    required TResult orElse(),
  }) {
    if (playListNameChanged != null) {
      return playListNameChanged(playListName);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_PlayListCreateButtonClick value)
        playListCreateButtonClick,
    required TResult Function(_PlayListNameChanged value) playListNameChanged,
    required TResult Function(_AddToPlayList value) addToPlayList,
    required TResult Function(_RemoveAudioFromPlayList value)
        removeAudioFromPlayList,
    required TResult Function(_DeletePlaylist value) deletePlaylist,
  }) {
    return playListNameChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_PlayListCreateButtonClick value)?
        playListCreateButtonClick,
    TResult? Function(_PlayListNameChanged value)? playListNameChanged,
    TResult? Function(_AddToPlayList value)? addToPlayList,
    TResult? Function(_RemoveAudioFromPlayList value)? removeAudioFromPlayList,
    TResult? Function(_DeletePlaylist value)? deletePlaylist,
  }) {
    return playListNameChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_PlayListCreateButtonClick value)?
        playListCreateButtonClick,
    TResult Function(_PlayListNameChanged value)? playListNameChanged,
    TResult Function(_AddToPlayList value)? addToPlayList,
    TResult Function(_RemoveAudioFromPlayList value)? removeAudioFromPlayList,
    TResult Function(_DeletePlaylist value)? deletePlaylist,
    required TResult orElse(),
  }) {
    if (playListNameChanged != null) {
      return playListNameChanged(this);
    }
    return orElse();
  }
}

abstract class _PlayListNameChanged implements PlayListHomeActionEvent {
  const factory _PlayListNameChanged({required final String playListName}) =
      _$PlayListNameChangedImpl;

  String get playListName;
  @JsonKey(ignore: true)
  _$$PlayListNameChangedImplCopyWith<_$PlayListNameChangedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$AddToPlayListImplCopyWith<$Res> {
  factory _$$AddToPlayListImplCopyWith(
          _$AddToPlayListImpl value, $Res Function(_$AddToPlayListImpl) then) =
      __$$AddToPlayListImplCopyWithImpl<$Res>;
  @useResult
  $Res call({PlayListName playListName, AudioPath audioPath});
}

/// @nodoc
class __$$AddToPlayListImplCopyWithImpl<$Res>
    extends _$PlayListHomeActionEventCopyWithImpl<$Res, _$AddToPlayListImpl>
    implements _$$AddToPlayListImplCopyWith<$Res> {
  __$$AddToPlayListImplCopyWithImpl(
      _$AddToPlayListImpl _value, $Res Function(_$AddToPlayListImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? playListName = null,
    Object? audioPath = null,
  }) {
    return _then(_$AddToPlayListImpl(
      playListName: null == playListName
          ? _value.playListName
          : playListName // ignore: cast_nullable_to_non_nullable
              as PlayListName,
      audioPath: null == audioPath
          ? _value.audioPath
          : audioPath // ignore: cast_nullable_to_non_nullable
              as AudioPath,
    ));
  }
}

/// @nodoc

class _$AddToPlayListImpl implements _AddToPlayList {
  const _$AddToPlayListImpl(
      {required this.playListName, required this.audioPath});

  @override
  final PlayListName playListName;
  @override
  final AudioPath audioPath;

  @override
  String toString() {
    return 'PlayListHomeActionEvent.addToPlayList(playListName: $playListName, audioPath: $audioPath)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddToPlayListImpl &&
            (identical(other.playListName, playListName) ||
                other.playListName == playListName) &&
            (identical(other.audioPath, audioPath) ||
                other.audioPath == audioPath));
  }

  @override
  int get hashCode => Object.hash(runtimeType, playListName, audioPath);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AddToPlayListImplCopyWith<_$AddToPlayListImpl> get copyWith =>
      __$$AddToPlayListImplCopyWithImpl<_$AddToPlayListImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() playListCreateButtonClick,
    required TResult Function(String playListName) playListNameChanged,
    required TResult Function(PlayListName playListName, AudioPath audioPath)
        addToPlayList,
    required TResult Function(
            PlayListName playListName, AudioPath audioPath, int index)
        removeAudioFromPlayList,
    required TResult Function(PlayListName playListName) deletePlaylist,
  }) {
    return addToPlayList(playListName, audioPath);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? playListCreateButtonClick,
    TResult? Function(String playListName)? playListNameChanged,
    TResult? Function(PlayListName playListName, AudioPath audioPath)?
        addToPlayList,
    TResult? Function(
            PlayListName playListName, AudioPath audioPath, int index)?
        removeAudioFromPlayList,
    TResult? Function(PlayListName playListName)? deletePlaylist,
  }) {
    return addToPlayList?.call(playListName, audioPath);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? playListCreateButtonClick,
    TResult Function(String playListName)? playListNameChanged,
    TResult Function(PlayListName playListName, AudioPath audioPath)?
        addToPlayList,
    TResult Function(PlayListName playListName, AudioPath audioPath, int index)?
        removeAudioFromPlayList,
    TResult Function(PlayListName playListName)? deletePlaylist,
    required TResult orElse(),
  }) {
    if (addToPlayList != null) {
      return addToPlayList(playListName, audioPath);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_PlayListCreateButtonClick value)
        playListCreateButtonClick,
    required TResult Function(_PlayListNameChanged value) playListNameChanged,
    required TResult Function(_AddToPlayList value) addToPlayList,
    required TResult Function(_RemoveAudioFromPlayList value)
        removeAudioFromPlayList,
    required TResult Function(_DeletePlaylist value) deletePlaylist,
  }) {
    return addToPlayList(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_PlayListCreateButtonClick value)?
        playListCreateButtonClick,
    TResult? Function(_PlayListNameChanged value)? playListNameChanged,
    TResult? Function(_AddToPlayList value)? addToPlayList,
    TResult? Function(_RemoveAudioFromPlayList value)? removeAudioFromPlayList,
    TResult? Function(_DeletePlaylist value)? deletePlaylist,
  }) {
    return addToPlayList?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_PlayListCreateButtonClick value)?
        playListCreateButtonClick,
    TResult Function(_PlayListNameChanged value)? playListNameChanged,
    TResult Function(_AddToPlayList value)? addToPlayList,
    TResult Function(_RemoveAudioFromPlayList value)? removeAudioFromPlayList,
    TResult Function(_DeletePlaylist value)? deletePlaylist,
    required TResult orElse(),
  }) {
    if (addToPlayList != null) {
      return addToPlayList(this);
    }
    return orElse();
  }
}

abstract class _AddToPlayList implements PlayListHomeActionEvent {
  const factory _AddToPlayList(
      {required final PlayListName playListName,
      required final AudioPath audioPath}) = _$AddToPlayListImpl;

  PlayListName get playListName;
  AudioPath get audioPath;
  @JsonKey(ignore: true)
  _$$AddToPlayListImplCopyWith<_$AddToPlayListImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$RemoveAudioFromPlayListImplCopyWith<$Res> {
  factory _$$RemoveAudioFromPlayListImplCopyWith(
          _$RemoveAudioFromPlayListImpl value,
          $Res Function(_$RemoveAudioFromPlayListImpl) then) =
      __$$RemoveAudioFromPlayListImplCopyWithImpl<$Res>;
  @useResult
  $Res call({PlayListName playListName, AudioPath audioPath, int index});
}

/// @nodoc
class __$$RemoveAudioFromPlayListImplCopyWithImpl<$Res>
    extends _$PlayListHomeActionEventCopyWithImpl<$Res,
        _$RemoveAudioFromPlayListImpl>
    implements _$$RemoveAudioFromPlayListImplCopyWith<$Res> {
  __$$RemoveAudioFromPlayListImplCopyWithImpl(
      _$RemoveAudioFromPlayListImpl _value,
      $Res Function(_$RemoveAudioFromPlayListImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? playListName = null,
    Object? audioPath = null,
    Object? index = null,
  }) {
    return _then(_$RemoveAudioFromPlayListImpl(
      playListName: null == playListName
          ? _value.playListName
          : playListName // ignore: cast_nullable_to_non_nullable
              as PlayListName,
      audioPath: null == audioPath
          ? _value.audioPath
          : audioPath // ignore: cast_nullable_to_non_nullable
              as AudioPath,
      index: null == index
          ? _value.index
          : index // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$RemoveAudioFromPlayListImpl implements _RemoveAudioFromPlayList {
  const _$RemoveAudioFromPlayListImpl(
      {required this.playListName,
      required this.audioPath,
      required this.index});

  @override
  final PlayListName playListName;
  @override
  final AudioPath audioPath;
  @override
  final int index;

  @override
  String toString() {
    return 'PlayListHomeActionEvent.removeAudioFromPlayList(playListName: $playListName, audioPath: $audioPath, index: $index)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RemoveAudioFromPlayListImpl &&
            (identical(other.playListName, playListName) ||
                other.playListName == playListName) &&
            (identical(other.audioPath, audioPath) ||
                other.audioPath == audioPath) &&
            (identical(other.index, index) || other.index == index));
  }

  @override
  int get hashCode => Object.hash(runtimeType, playListName, audioPath, index);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RemoveAudioFromPlayListImplCopyWith<_$RemoveAudioFromPlayListImpl>
      get copyWith => __$$RemoveAudioFromPlayListImplCopyWithImpl<
          _$RemoveAudioFromPlayListImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() playListCreateButtonClick,
    required TResult Function(String playListName) playListNameChanged,
    required TResult Function(PlayListName playListName, AudioPath audioPath)
        addToPlayList,
    required TResult Function(
            PlayListName playListName, AudioPath audioPath, int index)
        removeAudioFromPlayList,
    required TResult Function(PlayListName playListName) deletePlaylist,
  }) {
    return removeAudioFromPlayList(playListName, audioPath, index);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? playListCreateButtonClick,
    TResult? Function(String playListName)? playListNameChanged,
    TResult? Function(PlayListName playListName, AudioPath audioPath)?
        addToPlayList,
    TResult? Function(
            PlayListName playListName, AudioPath audioPath, int index)?
        removeAudioFromPlayList,
    TResult? Function(PlayListName playListName)? deletePlaylist,
  }) {
    return removeAudioFromPlayList?.call(playListName, audioPath, index);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? playListCreateButtonClick,
    TResult Function(String playListName)? playListNameChanged,
    TResult Function(PlayListName playListName, AudioPath audioPath)?
        addToPlayList,
    TResult Function(PlayListName playListName, AudioPath audioPath, int index)?
        removeAudioFromPlayList,
    TResult Function(PlayListName playListName)? deletePlaylist,
    required TResult orElse(),
  }) {
    if (removeAudioFromPlayList != null) {
      return removeAudioFromPlayList(playListName, audioPath, index);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_PlayListCreateButtonClick value)
        playListCreateButtonClick,
    required TResult Function(_PlayListNameChanged value) playListNameChanged,
    required TResult Function(_AddToPlayList value) addToPlayList,
    required TResult Function(_RemoveAudioFromPlayList value)
        removeAudioFromPlayList,
    required TResult Function(_DeletePlaylist value) deletePlaylist,
  }) {
    return removeAudioFromPlayList(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_PlayListCreateButtonClick value)?
        playListCreateButtonClick,
    TResult? Function(_PlayListNameChanged value)? playListNameChanged,
    TResult? Function(_AddToPlayList value)? addToPlayList,
    TResult? Function(_RemoveAudioFromPlayList value)? removeAudioFromPlayList,
    TResult? Function(_DeletePlaylist value)? deletePlaylist,
  }) {
    return removeAudioFromPlayList?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_PlayListCreateButtonClick value)?
        playListCreateButtonClick,
    TResult Function(_PlayListNameChanged value)? playListNameChanged,
    TResult Function(_AddToPlayList value)? addToPlayList,
    TResult Function(_RemoveAudioFromPlayList value)? removeAudioFromPlayList,
    TResult Function(_DeletePlaylist value)? deletePlaylist,
    required TResult orElse(),
  }) {
    if (removeAudioFromPlayList != null) {
      return removeAudioFromPlayList(this);
    }
    return orElse();
  }
}

abstract class _RemoveAudioFromPlayList implements PlayListHomeActionEvent {
  const factory _RemoveAudioFromPlayList(
      {required final PlayListName playListName,
      required final AudioPath audioPath,
      required final int index}) = _$RemoveAudioFromPlayListImpl;

  PlayListName get playListName;
  AudioPath get audioPath;
  int get index;
  @JsonKey(ignore: true)
  _$$RemoveAudioFromPlayListImplCopyWith<_$RemoveAudioFromPlayListImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$DeletePlaylistImplCopyWith<$Res> {
  factory _$$DeletePlaylistImplCopyWith(_$DeletePlaylistImpl value,
          $Res Function(_$DeletePlaylistImpl) then) =
      __$$DeletePlaylistImplCopyWithImpl<$Res>;
  @useResult
  $Res call({PlayListName playListName});
}

/// @nodoc
class __$$DeletePlaylistImplCopyWithImpl<$Res>
    extends _$PlayListHomeActionEventCopyWithImpl<$Res, _$DeletePlaylistImpl>
    implements _$$DeletePlaylistImplCopyWith<$Res> {
  __$$DeletePlaylistImplCopyWithImpl(
      _$DeletePlaylistImpl _value, $Res Function(_$DeletePlaylistImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? playListName = null,
  }) {
    return _then(_$DeletePlaylistImpl(
      playListName: null == playListName
          ? _value.playListName
          : playListName // ignore: cast_nullable_to_non_nullable
              as PlayListName,
    ));
  }
}

/// @nodoc

class _$DeletePlaylistImpl implements _DeletePlaylist {
  const _$DeletePlaylistImpl({required this.playListName});

  @override
  final PlayListName playListName;

  @override
  String toString() {
    return 'PlayListHomeActionEvent.deletePlaylist(playListName: $playListName)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DeletePlaylistImpl &&
            (identical(other.playListName, playListName) ||
                other.playListName == playListName));
  }

  @override
  int get hashCode => Object.hash(runtimeType, playListName);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DeletePlaylistImplCopyWith<_$DeletePlaylistImpl> get copyWith =>
      __$$DeletePlaylistImplCopyWithImpl<_$DeletePlaylistImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() playListCreateButtonClick,
    required TResult Function(String playListName) playListNameChanged,
    required TResult Function(PlayListName playListName, AudioPath audioPath)
        addToPlayList,
    required TResult Function(
            PlayListName playListName, AudioPath audioPath, int index)
        removeAudioFromPlayList,
    required TResult Function(PlayListName playListName) deletePlaylist,
  }) {
    return deletePlaylist(playListName);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? playListCreateButtonClick,
    TResult? Function(String playListName)? playListNameChanged,
    TResult? Function(PlayListName playListName, AudioPath audioPath)?
        addToPlayList,
    TResult? Function(
            PlayListName playListName, AudioPath audioPath, int index)?
        removeAudioFromPlayList,
    TResult? Function(PlayListName playListName)? deletePlaylist,
  }) {
    return deletePlaylist?.call(playListName);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? playListCreateButtonClick,
    TResult Function(String playListName)? playListNameChanged,
    TResult Function(PlayListName playListName, AudioPath audioPath)?
        addToPlayList,
    TResult Function(PlayListName playListName, AudioPath audioPath, int index)?
        removeAudioFromPlayList,
    TResult Function(PlayListName playListName)? deletePlaylist,
    required TResult orElse(),
  }) {
    if (deletePlaylist != null) {
      return deletePlaylist(playListName);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_PlayListCreateButtonClick value)
        playListCreateButtonClick,
    required TResult Function(_PlayListNameChanged value) playListNameChanged,
    required TResult Function(_AddToPlayList value) addToPlayList,
    required TResult Function(_RemoveAudioFromPlayList value)
        removeAudioFromPlayList,
    required TResult Function(_DeletePlaylist value) deletePlaylist,
  }) {
    return deletePlaylist(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_PlayListCreateButtonClick value)?
        playListCreateButtonClick,
    TResult? Function(_PlayListNameChanged value)? playListNameChanged,
    TResult? Function(_AddToPlayList value)? addToPlayList,
    TResult? Function(_RemoveAudioFromPlayList value)? removeAudioFromPlayList,
    TResult? Function(_DeletePlaylist value)? deletePlaylist,
  }) {
    return deletePlaylist?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_PlayListCreateButtonClick value)?
        playListCreateButtonClick,
    TResult Function(_PlayListNameChanged value)? playListNameChanged,
    TResult Function(_AddToPlayList value)? addToPlayList,
    TResult Function(_RemoveAudioFromPlayList value)? removeAudioFromPlayList,
    TResult Function(_DeletePlaylist value)? deletePlaylist,
    required TResult orElse(),
  }) {
    if (deletePlaylist != null) {
      return deletePlaylist(this);
    }
    return orElse();
  }
}

abstract class _DeletePlaylist implements PlayListHomeActionEvent {
  const factory _DeletePlaylist({required final PlayListName playListName}) =
      _$DeletePlaylistImpl;

  PlayListName get playListName;
  @JsonKey(ignore: true)
  _$$DeletePlaylistImplCopyWith<_$DeletePlaylistImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$PlayListHomeActionState {
  PlayListName get playListName => throw _privateConstructorUsedError;
  bool get showErrorMessage => throw _privateConstructorUsedError;
  bool get isSubmitting => throw _privateConstructorUsedError;
  Option<Either<PlayListFailure, Unit>> get failureOrSuccessOption =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $PlayListHomeActionStateCopyWith<PlayListHomeActionState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PlayListHomeActionStateCopyWith<$Res> {
  factory $PlayListHomeActionStateCopyWith(PlayListHomeActionState value,
          $Res Function(PlayListHomeActionState) then) =
      _$PlayListHomeActionStateCopyWithImpl<$Res, PlayListHomeActionState>;
  @useResult
  $Res call(
      {PlayListName playListName,
      bool showErrorMessage,
      bool isSubmitting,
      Option<Either<PlayListFailure, Unit>> failureOrSuccessOption});
}

/// @nodoc
class _$PlayListHomeActionStateCopyWithImpl<$Res,
        $Val extends PlayListHomeActionState>
    implements $PlayListHomeActionStateCopyWith<$Res> {
  _$PlayListHomeActionStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? playListName = null,
    Object? showErrorMessage = null,
    Object? isSubmitting = null,
    Object? failureOrSuccessOption = null,
  }) {
    return _then(_value.copyWith(
      playListName: null == playListName
          ? _value.playListName
          : playListName // ignore: cast_nullable_to_non_nullable
              as PlayListName,
      showErrorMessage: null == showErrorMessage
          ? _value.showErrorMessage
          : showErrorMessage // ignore: cast_nullable_to_non_nullable
              as bool,
      isSubmitting: null == isSubmitting
          ? _value.isSubmitting
          : isSubmitting // ignore: cast_nullable_to_non_nullable
              as bool,
      failureOrSuccessOption: null == failureOrSuccessOption
          ? _value.failureOrSuccessOption
          : failureOrSuccessOption // ignore: cast_nullable_to_non_nullable
              as Option<Either<PlayListFailure, Unit>>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PlayListHomeActionStateImplCopyWith<$Res>
    implements $PlayListHomeActionStateCopyWith<$Res> {
  factory _$$PlayListHomeActionStateImplCopyWith(
          _$PlayListHomeActionStateImpl value,
          $Res Function(_$PlayListHomeActionStateImpl) then) =
      __$$PlayListHomeActionStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {PlayListName playListName,
      bool showErrorMessage,
      bool isSubmitting,
      Option<Either<PlayListFailure, Unit>> failureOrSuccessOption});
}

/// @nodoc
class __$$PlayListHomeActionStateImplCopyWithImpl<$Res>
    extends _$PlayListHomeActionStateCopyWithImpl<$Res,
        _$PlayListHomeActionStateImpl>
    implements _$$PlayListHomeActionStateImplCopyWith<$Res> {
  __$$PlayListHomeActionStateImplCopyWithImpl(
      _$PlayListHomeActionStateImpl _value,
      $Res Function(_$PlayListHomeActionStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? playListName = null,
    Object? showErrorMessage = null,
    Object? isSubmitting = null,
    Object? failureOrSuccessOption = null,
  }) {
    return _then(_$PlayListHomeActionStateImpl(
      playListName: null == playListName
          ? _value.playListName
          : playListName // ignore: cast_nullable_to_non_nullable
              as PlayListName,
      showErrorMessage: null == showErrorMessage
          ? _value.showErrorMessage
          : showErrorMessage // ignore: cast_nullable_to_non_nullable
              as bool,
      isSubmitting: null == isSubmitting
          ? _value.isSubmitting
          : isSubmitting // ignore: cast_nullable_to_non_nullable
              as bool,
      failureOrSuccessOption: null == failureOrSuccessOption
          ? _value.failureOrSuccessOption
          : failureOrSuccessOption // ignore: cast_nullable_to_non_nullable
              as Option<Either<PlayListFailure, Unit>>,
    ));
  }
}

/// @nodoc

class _$PlayListHomeActionStateImpl implements _PlayListHomeActionState {
  const _$PlayListHomeActionStateImpl(
      {required this.playListName,
      required this.showErrorMessage,
      required this.isSubmitting,
      required this.failureOrSuccessOption});

  @override
  final PlayListName playListName;
  @override
  final bool showErrorMessage;
  @override
  final bool isSubmitting;
  @override
  final Option<Either<PlayListFailure, Unit>> failureOrSuccessOption;

  @override
  String toString() {
    return 'PlayListHomeActionState(playListName: $playListName, showErrorMessage: $showErrorMessage, isSubmitting: $isSubmitting, failureOrSuccessOption: $failureOrSuccessOption)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PlayListHomeActionStateImpl &&
            (identical(other.playListName, playListName) ||
                other.playListName == playListName) &&
            (identical(other.showErrorMessage, showErrorMessage) ||
                other.showErrorMessage == showErrorMessage) &&
            (identical(other.isSubmitting, isSubmitting) ||
                other.isSubmitting == isSubmitting) &&
            (identical(other.failureOrSuccessOption, failureOrSuccessOption) ||
                other.failureOrSuccessOption == failureOrSuccessOption));
  }

  @override
  int get hashCode => Object.hash(runtimeType, playListName, showErrorMessage,
      isSubmitting, failureOrSuccessOption);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PlayListHomeActionStateImplCopyWith<_$PlayListHomeActionStateImpl>
      get copyWith => __$$PlayListHomeActionStateImplCopyWithImpl<
          _$PlayListHomeActionStateImpl>(this, _$identity);
}

abstract class _PlayListHomeActionState implements PlayListHomeActionState {
  const factory _PlayListHomeActionState(
      {required final PlayListName playListName,
      required final bool showErrorMessage,
      required final bool isSubmitting,
      required final Option<Either<PlayListFailure, Unit>>
          failureOrSuccessOption}) = _$PlayListHomeActionStateImpl;

  @override
  PlayListName get playListName;
  @override
  bool get showErrorMessage;
  @override
  bool get isSubmitting;
  @override
  Option<Either<PlayListFailure, Unit>> get failureOrSuccessOption;
  @override
  @JsonKey(ignore: true)
  _$$PlayListHomeActionStateImplCopyWith<_$PlayListHomeActionStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}
