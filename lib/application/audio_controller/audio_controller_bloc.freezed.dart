// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'audio_controller_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$AudioControllerEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int index) addToPlay,
    required TResult Function() playOrPause,
    required TResult Function() nextAudio,
    required TResult Function() previuosAudio,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int index)? addToPlay,
    TResult? Function()? playOrPause,
    TResult? Function()? nextAudio,
    TResult? Function()? previuosAudio,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int index)? addToPlay,
    TResult Function()? playOrPause,
    TResult Function()? nextAudio,
    TResult Function()? previuosAudio,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AddToPlay value) addToPlay,
    required TResult Function(_PlayOrPause value) playOrPause,
    required TResult Function(_NextAudio value) nextAudio,
    required TResult Function(_PreviuosAudio value) previuosAudio,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AddToPlay value)? addToPlay,
    TResult? Function(_PlayOrPause value)? playOrPause,
    TResult? Function(_NextAudio value)? nextAudio,
    TResult? Function(_PreviuosAudio value)? previuosAudio,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AddToPlay value)? addToPlay,
    TResult Function(_PlayOrPause value)? playOrPause,
    TResult Function(_NextAudio value)? nextAudio,
    TResult Function(_PreviuosAudio value)? previuosAudio,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AudioControllerEventCopyWith<$Res> {
  factory $AudioControllerEventCopyWith(AudioControllerEvent value,
          $Res Function(AudioControllerEvent) then) =
      _$AudioControllerEventCopyWithImpl<$Res, AudioControllerEvent>;
}

/// @nodoc
class _$AudioControllerEventCopyWithImpl<$Res,
        $Val extends AudioControllerEvent>
    implements $AudioControllerEventCopyWith<$Res> {
  _$AudioControllerEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$AddToPlayImplCopyWith<$Res> {
  factory _$$AddToPlayImplCopyWith(
          _$AddToPlayImpl value, $Res Function(_$AddToPlayImpl) then) =
      __$$AddToPlayImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int index});
}

/// @nodoc
class __$$AddToPlayImplCopyWithImpl<$Res>
    extends _$AudioControllerEventCopyWithImpl<$Res, _$AddToPlayImpl>
    implements _$$AddToPlayImplCopyWith<$Res> {
  __$$AddToPlayImplCopyWithImpl(
      _$AddToPlayImpl _value, $Res Function(_$AddToPlayImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? index = null,
  }) {
    return _then(_$AddToPlayImpl(
      index: null == index
          ? _value.index
          : index // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$AddToPlayImpl implements _AddToPlay {
  const _$AddToPlayImpl({required this.index});

  @override
  final int index;

  @override
  String toString() {
    return 'AudioControllerEvent.addToPlay(index: $index)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddToPlayImpl &&
            (identical(other.index, index) || other.index == index));
  }

  @override
  int get hashCode => Object.hash(runtimeType, index);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AddToPlayImplCopyWith<_$AddToPlayImpl> get copyWith =>
      __$$AddToPlayImplCopyWithImpl<_$AddToPlayImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int index) addToPlay,
    required TResult Function() playOrPause,
    required TResult Function() nextAudio,
    required TResult Function() previuosAudio,
  }) {
    return addToPlay(index);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int index)? addToPlay,
    TResult? Function()? playOrPause,
    TResult? Function()? nextAudio,
    TResult? Function()? previuosAudio,
  }) {
    return addToPlay?.call(index);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int index)? addToPlay,
    TResult Function()? playOrPause,
    TResult Function()? nextAudio,
    TResult Function()? previuosAudio,
    required TResult orElse(),
  }) {
    if (addToPlay != null) {
      return addToPlay(index);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AddToPlay value) addToPlay,
    required TResult Function(_PlayOrPause value) playOrPause,
    required TResult Function(_NextAudio value) nextAudio,
    required TResult Function(_PreviuosAudio value) previuosAudio,
  }) {
    return addToPlay(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AddToPlay value)? addToPlay,
    TResult? Function(_PlayOrPause value)? playOrPause,
    TResult? Function(_NextAudio value)? nextAudio,
    TResult? Function(_PreviuosAudio value)? previuosAudio,
  }) {
    return addToPlay?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AddToPlay value)? addToPlay,
    TResult Function(_PlayOrPause value)? playOrPause,
    TResult Function(_NextAudio value)? nextAudio,
    TResult Function(_PreviuosAudio value)? previuosAudio,
    required TResult orElse(),
  }) {
    if (addToPlay != null) {
      return addToPlay(this);
    }
    return orElse();
  }
}

abstract class _AddToPlay implements AudioControllerEvent {
  const factory _AddToPlay({required final int index}) = _$AddToPlayImpl;

  int get index;
  @JsonKey(ignore: true)
  _$$AddToPlayImplCopyWith<_$AddToPlayImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$PlayOrPauseImplCopyWith<$Res> {
  factory _$$PlayOrPauseImplCopyWith(
          _$PlayOrPauseImpl value, $Res Function(_$PlayOrPauseImpl) then) =
      __$$PlayOrPauseImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$PlayOrPauseImplCopyWithImpl<$Res>
    extends _$AudioControllerEventCopyWithImpl<$Res, _$PlayOrPauseImpl>
    implements _$$PlayOrPauseImplCopyWith<$Res> {
  __$$PlayOrPauseImplCopyWithImpl(
      _$PlayOrPauseImpl _value, $Res Function(_$PlayOrPauseImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$PlayOrPauseImpl implements _PlayOrPause {
  const _$PlayOrPauseImpl();

  @override
  String toString() {
    return 'AudioControllerEvent.playOrPause()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$PlayOrPauseImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int index) addToPlay,
    required TResult Function() playOrPause,
    required TResult Function() nextAudio,
    required TResult Function() previuosAudio,
  }) {
    return playOrPause();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int index)? addToPlay,
    TResult? Function()? playOrPause,
    TResult? Function()? nextAudio,
    TResult? Function()? previuosAudio,
  }) {
    return playOrPause?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int index)? addToPlay,
    TResult Function()? playOrPause,
    TResult Function()? nextAudio,
    TResult Function()? previuosAudio,
    required TResult orElse(),
  }) {
    if (playOrPause != null) {
      return playOrPause();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AddToPlay value) addToPlay,
    required TResult Function(_PlayOrPause value) playOrPause,
    required TResult Function(_NextAudio value) nextAudio,
    required TResult Function(_PreviuosAudio value) previuosAudio,
  }) {
    return playOrPause(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AddToPlay value)? addToPlay,
    TResult? Function(_PlayOrPause value)? playOrPause,
    TResult? Function(_NextAudio value)? nextAudio,
    TResult? Function(_PreviuosAudio value)? previuosAudio,
  }) {
    return playOrPause?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AddToPlay value)? addToPlay,
    TResult Function(_PlayOrPause value)? playOrPause,
    TResult Function(_NextAudio value)? nextAudio,
    TResult Function(_PreviuosAudio value)? previuosAudio,
    required TResult orElse(),
  }) {
    if (playOrPause != null) {
      return playOrPause(this);
    }
    return orElse();
  }
}

abstract class _PlayOrPause implements AudioControllerEvent {
  const factory _PlayOrPause() = _$PlayOrPauseImpl;
}

/// @nodoc
abstract class _$$NextAudioImplCopyWith<$Res> {
  factory _$$NextAudioImplCopyWith(
          _$NextAudioImpl value, $Res Function(_$NextAudioImpl) then) =
      __$$NextAudioImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$NextAudioImplCopyWithImpl<$Res>
    extends _$AudioControllerEventCopyWithImpl<$Res, _$NextAudioImpl>
    implements _$$NextAudioImplCopyWith<$Res> {
  __$$NextAudioImplCopyWithImpl(
      _$NextAudioImpl _value, $Res Function(_$NextAudioImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$NextAudioImpl implements _NextAudio {
  const _$NextAudioImpl();

  @override
  String toString() {
    return 'AudioControllerEvent.nextAudio()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$NextAudioImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int index) addToPlay,
    required TResult Function() playOrPause,
    required TResult Function() nextAudio,
    required TResult Function() previuosAudio,
  }) {
    return nextAudio();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int index)? addToPlay,
    TResult? Function()? playOrPause,
    TResult? Function()? nextAudio,
    TResult? Function()? previuosAudio,
  }) {
    return nextAudio?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int index)? addToPlay,
    TResult Function()? playOrPause,
    TResult Function()? nextAudio,
    TResult Function()? previuosAudio,
    required TResult orElse(),
  }) {
    if (nextAudio != null) {
      return nextAudio();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AddToPlay value) addToPlay,
    required TResult Function(_PlayOrPause value) playOrPause,
    required TResult Function(_NextAudio value) nextAudio,
    required TResult Function(_PreviuosAudio value) previuosAudio,
  }) {
    return nextAudio(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AddToPlay value)? addToPlay,
    TResult? Function(_PlayOrPause value)? playOrPause,
    TResult? Function(_NextAudio value)? nextAudio,
    TResult? Function(_PreviuosAudio value)? previuosAudio,
  }) {
    return nextAudio?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AddToPlay value)? addToPlay,
    TResult Function(_PlayOrPause value)? playOrPause,
    TResult Function(_NextAudio value)? nextAudio,
    TResult Function(_PreviuosAudio value)? previuosAudio,
    required TResult orElse(),
  }) {
    if (nextAudio != null) {
      return nextAudio(this);
    }
    return orElse();
  }
}

abstract class _NextAudio implements AudioControllerEvent {
  const factory _NextAudio() = _$NextAudioImpl;
}

/// @nodoc
abstract class _$$PreviuosAudioImplCopyWith<$Res> {
  factory _$$PreviuosAudioImplCopyWith(
          _$PreviuosAudioImpl value, $Res Function(_$PreviuosAudioImpl) then) =
      __$$PreviuosAudioImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$PreviuosAudioImplCopyWithImpl<$Res>
    extends _$AudioControllerEventCopyWithImpl<$Res, _$PreviuosAudioImpl>
    implements _$$PreviuosAudioImplCopyWith<$Res> {
  __$$PreviuosAudioImplCopyWithImpl(
      _$PreviuosAudioImpl _value, $Res Function(_$PreviuosAudioImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$PreviuosAudioImpl implements _PreviuosAudio {
  const _$PreviuosAudioImpl();

  @override
  String toString() {
    return 'AudioControllerEvent.previuosAudio()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$PreviuosAudioImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int index) addToPlay,
    required TResult Function() playOrPause,
    required TResult Function() nextAudio,
    required TResult Function() previuosAudio,
  }) {
    return previuosAudio();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int index)? addToPlay,
    TResult? Function()? playOrPause,
    TResult? Function()? nextAudio,
    TResult? Function()? previuosAudio,
  }) {
    return previuosAudio?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int index)? addToPlay,
    TResult Function()? playOrPause,
    TResult Function()? nextAudio,
    TResult Function()? previuosAudio,
    required TResult orElse(),
  }) {
    if (previuosAudio != null) {
      return previuosAudio();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AddToPlay value) addToPlay,
    required TResult Function(_PlayOrPause value) playOrPause,
    required TResult Function(_NextAudio value) nextAudio,
    required TResult Function(_PreviuosAudio value) previuosAudio,
  }) {
    return previuosAudio(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AddToPlay value)? addToPlay,
    TResult? Function(_PlayOrPause value)? playOrPause,
    TResult? Function(_NextAudio value)? nextAudio,
    TResult? Function(_PreviuosAudio value)? previuosAudio,
  }) {
    return previuosAudio?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AddToPlay value)? addToPlay,
    TResult Function(_PlayOrPause value)? playOrPause,
    TResult Function(_NextAudio value)? nextAudio,
    TResult Function(_PreviuosAudio value)? previuosAudio,
    required TResult orElse(),
  }) {
    if (previuosAudio != null) {
      return previuosAudio(this);
    }
    return orElse();
  }
}

abstract class _PreviuosAudio implements AudioControllerEvent {
  const factory _PreviuosAudio() = _$PreviuosAudioImpl;
}

/// @nodoc
mixin _$AudioControllerState {
  bool get isPlaying => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AudioControllerStateCopyWith<AudioControllerState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AudioControllerStateCopyWith<$Res> {
  factory $AudioControllerStateCopyWith(AudioControllerState value,
          $Res Function(AudioControllerState) then) =
      _$AudioControllerStateCopyWithImpl<$Res, AudioControllerState>;
  @useResult
  $Res call({bool isPlaying});
}

/// @nodoc
class _$AudioControllerStateCopyWithImpl<$Res,
        $Val extends AudioControllerState>
    implements $AudioControllerStateCopyWith<$Res> {
  _$AudioControllerStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isPlaying = null,
  }) {
    return _then(_value.copyWith(
      isPlaying: null == isPlaying
          ? _value.isPlaying
          : isPlaying // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AudioControllerStateImplCopyWith<$Res>
    implements $AudioControllerStateCopyWith<$Res> {
  factory _$$AudioControllerStateImplCopyWith(_$AudioControllerStateImpl value,
          $Res Function(_$AudioControllerStateImpl) then) =
      __$$AudioControllerStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool isPlaying});
}

/// @nodoc
class __$$AudioControllerStateImplCopyWithImpl<$Res>
    extends _$AudioControllerStateCopyWithImpl<$Res, _$AudioControllerStateImpl>
    implements _$$AudioControllerStateImplCopyWith<$Res> {
  __$$AudioControllerStateImplCopyWithImpl(_$AudioControllerStateImpl _value,
      $Res Function(_$AudioControllerStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isPlaying = null,
  }) {
    return _then(_$AudioControllerStateImpl(
      isPlaying: null == isPlaying
          ? _value.isPlaying
          : isPlaying // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$AudioControllerStateImpl implements _AudioControllerState {
  const _$AudioControllerStateImpl({required this.isPlaying});

  @override
  final bool isPlaying;

  @override
  String toString() {
    return 'AudioControllerState(isPlaying: $isPlaying)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AudioControllerStateImpl &&
            (identical(other.isPlaying, isPlaying) ||
                other.isPlaying == isPlaying));
  }

  @override
  int get hashCode => Object.hash(runtimeType, isPlaying);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AudioControllerStateImplCopyWith<_$AudioControllerStateImpl>
      get copyWith =>
          __$$AudioControllerStateImplCopyWithImpl<_$AudioControllerStateImpl>(
              this, _$identity);
}

abstract class _AudioControllerState implements AudioControllerState {
  const factory _AudioControllerState({required final bool isPlaying}) =
      _$AudioControllerStateImpl;

  @override
  bool get isPlaying;
  @override
  @JsonKey(ignore: true)
  _$$AudioControllerStateImplCopyWith<_$AudioControllerStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}
