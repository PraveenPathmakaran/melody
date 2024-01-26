// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'audio_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$AudioEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Audio audio, int index, bool isNavigationEnabled)
        playStorageAudio,
    required TResult Function() playAudio,
    required TResult Function() pauseAudio,
    required TResult Function() backButtonPressed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Audio audio, int index, bool isNavigationEnabled)?
        playStorageAudio,
    TResult? Function()? playAudio,
    TResult? Function()? pauseAudio,
    TResult? Function()? backButtonPressed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Audio audio, int index, bool isNavigationEnabled)?
        playStorageAudio,
    TResult Function()? playAudio,
    TResult Function()? pauseAudio,
    TResult Function()? backButtonPressed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_PlayStorageAudio value) playStorageAudio,
    required TResult Function(_PlayAudio value) playAudio,
    required TResult Function(_PauseAudio value) pauseAudio,
    required TResult Function(_BackButtonPressed value) backButtonPressed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_PlayStorageAudio value)? playStorageAudio,
    TResult? Function(_PlayAudio value)? playAudio,
    TResult? Function(_PauseAudio value)? pauseAudio,
    TResult? Function(_BackButtonPressed value)? backButtonPressed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_PlayStorageAudio value)? playStorageAudio,
    TResult Function(_PlayAudio value)? playAudio,
    TResult Function(_PauseAudio value)? pauseAudio,
    TResult Function(_BackButtonPressed value)? backButtonPressed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AudioEventCopyWith<$Res> {
  factory $AudioEventCopyWith(
          AudioEvent value, $Res Function(AudioEvent) then) =
      _$AudioEventCopyWithImpl<$Res, AudioEvent>;
}

/// @nodoc
class _$AudioEventCopyWithImpl<$Res, $Val extends AudioEvent>
    implements $AudioEventCopyWith<$Res> {
  _$AudioEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$PlayStorageAudioImplCopyWith<$Res> {
  factory _$$PlayStorageAudioImplCopyWith(_$PlayStorageAudioImpl value,
          $Res Function(_$PlayStorageAudioImpl) then) =
      __$$PlayStorageAudioImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Audio audio, int index, bool isNavigationEnabled});

  $AudioCopyWith<$Res> get audio;
}

/// @nodoc
class __$$PlayStorageAudioImplCopyWithImpl<$Res>
    extends _$AudioEventCopyWithImpl<$Res, _$PlayStorageAudioImpl>
    implements _$$PlayStorageAudioImplCopyWith<$Res> {
  __$$PlayStorageAudioImplCopyWithImpl(_$PlayStorageAudioImpl _value,
      $Res Function(_$PlayStorageAudioImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? audio = null,
    Object? index = null,
    Object? isNavigationEnabled = null,
  }) {
    return _then(_$PlayStorageAudioImpl(
      audio: null == audio
          ? _value.audio
          : audio // ignore: cast_nullable_to_non_nullable
              as Audio,
      index: null == index
          ? _value.index
          : index // ignore: cast_nullable_to_non_nullable
              as int,
      isNavigationEnabled: null == isNavigationEnabled
          ? _value.isNavigationEnabled
          : isNavigationEnabled // ignore: cast_nullable_to_non_nullable
              as bool,
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

class _$PlayStorageAudioImpl implements _PlayStorageAudio {
  const _$PlayStorageAudioImpl(
      {required this.audio,
      required this.index,
      required this.isNavigationEnabled});

  @override
  final Audio audio;
  @override
  final int index;
  @override
  final bool isNavigationEnabled;

  @override
  String toString() {
    return 'AudioEvent.playStorageAudio(audio: $audio, index: $index, isNavigationEnabled: $isNavigationEnabled)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PlayStorageAudioImpl &&
            (identical(other.audio, audio) || other.audio == audio) &&
            (identical(other.index, index) || other.index == index) &&
            (identical(other.isNavigationEnabled, isNavigationEnabled) ||
                other.isNavigationEnabled == isNavigationEnabled));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, audio, index, isNavigationEnabled);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PlayStorageAudioImplCopyWith<_$PlayStorageAudioImpl> get copyWith =>
      __$$PlayStorageAudioImplCopyWithImpl<_$PlayStorageAudioImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Audio audio, int index, bool isNavigationEnabled)
        playStorageAudio,
    required TResult Function() playAudio,
    required TResult Function() pauseAudio,
    required TResult Function() backButtonPressed,
  }) {
    return playStorageAudio(audio, index, isNavigationEnabled);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Audio audio, int index, bool isNavigationEnabled)?
        playStorageAudio,
    TResult? Function()? playAudio,
    TResult? Function()? pauseAudio,
    TResult? Function()? backButtonPressed,
  }) {
    return playStorageAudio?.call(audio, index, isNavigationEnabled);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Audio audio, int index, bool isNavigationEnabled)?
        playStorageAudio,
    TResult Function()? playAudio,
    TResult Function()? pauseAudio,
    TResult Function()? backButtonPressed,
    required TResult orElse(),
  }) {
    if (playStorageAudio != null) {
      return playStorageAudio(audio, index, isNavigationEnabled);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_PlayStorageAudio value) playStorageAudio,
    required TResult Function(_PlayAudio value) playAudio,
    required TResult Function(_PauseAudio value) pauseAudio,
    required TResult Function(_BackButtonPressed value) backButtonPressed,
  }) {
    return playStorageAudio(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_PlayStorageAudio value)? playStorageAudio,
    TResult? Function(_PlayAudio value)? playAudio,
    TResult? Function(_PauseAudio value)? pauseAudio,
    TResult? Function(_BackButtonPressed value)? backButtonPressed,
  }) {
    return playStorageAudio?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_PlayStorageAudio value)? playStorageAudio,
    TResult Function(_PlayAudio value)? playAudio,
    TResult Function(_PauseAudio value)? pauseAudio,
    TResult Function(_BackButtonPressed value)? backButtonPressed,
    required TResult orElse(),
  }) {
    if (playStorageAudio != null) {
      return playStorageAudio(this);
    }
    return orElse();
  }
}

abstract class _PlayStorageAudio implements AudioEvent {
  const factory _PlayStorageAudio(
      {required final Audio audio,
      required final int index,
      required final bool isNavigationEnabled}) = _$PlayStorageAudioImpl;

  Audio get audio;
  int get index;
  bool get isNavigationEnabled;
  @JsonKey(ignore: true)
  _$$PlayStorageAudioImplCopyWith<_$PlayStorageAudioImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$PlayAudioImplCopyWith<$Res> {
  factory _$$PlayAudioImplCopyWith(
          _$PlayAudioImpl value, $Res Function(_$PlayAudioImpl) then) =
      __$$PlayAudioImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$PlayAudioImplCopyWithImpl<$Res>
    extends _$AudioEventCopyWithImpl<$Res, _$PlayAudioImpl>
    implements _$$PlayAudioImplCopyWith<$Res> {
  __$$PlayAudioImplCopyWithImpl(
      _$PlayAudioImpl _value, $Res Function(_$PlayAudioImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$PlayAudioImpl implements _PlayAudio {
  const _$PlayAudioImpl();

  @override
  String toString() {
    return 'AudioEvent.playAudio()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$PlayAudioImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Audio audio, int index, bool isNavigationEnabled)
        playStorageAudio,
    required TResult Function() playAudio,
    required TResult Function() pauseAudio,
    required TResult Function() backButtonPressed,
  }) {
    return playAudio();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Audio audio, int index, bool isNavigationEnabled)?
        playStorageAudio,
    TResult? Function()? playAudio,
    TResult? Function()? pauseAudio,
    TResult? Function()? backButtonPressed,
  }) {
    return playAudio?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Audio audio, int index, bool isNavigationEnabled)?
        playStorageAudio,
    TResult Function()? playAudio,
    TResult Function()? pauseAudio,
    TResult Function()? backButtonPressed,
    required TResult orElse(),
  }) {
    if (playAudio != null) {
      return playAudio();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_PlayStorageAudio value) playStorageAudio,
    required TResult Function(_PlayAudio value) playAudio,
    required TResult Function(_PauseAudio value) pauseAudio,
    required TResult Function(_BackButtonPressed value) backButtonPressed,
  }) {
    return playAudio(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_PlayStorageAudio value)? playStorageAudio,
    TResult? Function(_PlayAudio value)? playAudio,
    TResult? Function(_PauseAudio value)? pauseAudio,
    TResult? Function(_BackButtonPressed value)? backButtonPressed,
  }) {
    return playAudio?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_PlayStorageAudio value)? playStorageAudio,
    TResult Function(_PlayAudio value)? playAudio,
    TResult Function(_PauseAudio value)? pauseAudio,
    TResult Function(_BackButtonPressed value)? backButtonPressed,
    required TResult orElse(),
  }) {
    if (playAudio != null) {
      return playAudio(this);
    }
    return orElse();
  }
}

abstract class _PlayAudio implements AudioEvent {
  const factory _PlayAudio() = _$PlayAudioImpl;
}

/// @nodoc
abstract class _$$PauseAudioImplCopyWith<$Res> {
  factory _$$PauseAudioImplCopyWith(
          _$PauseAudioImpl value, $Res Function(_$PauseAudioImpl) then) =
      __$$PauseAudioImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$PauseAudioImplCopyWithImpl<$Res>
    extends _$AudioEventCopyWithImpl<$Res, _$PauseAudioImpl>
    implements _$$PauseAudioImplCopyWith<$Res> {
  __$$PauseAudioImplCopyWithImpl(
      _$PauseAudioImpl _value, $Res Function(_$PauseAudioImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$PauseAudioImpl implements _PauseAudio {
  const _$PauseAudioImpl();

  @override
  String toString() {
    return 'AudioEvent.pauseAudio()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$PauseAudioImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Audio audio, int index, bool isNavigationEnabled)
        playStorageAudio,
    required TResult Function() playAudio,
    required TResult Function() pauseAudio,
    required TResult Function() backButtonPressed,
  }) {
    return pauseAudio();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Audio audio, int index, bool isNavigationEnabled)?
        playStorageAudio,
    TResult? Function()? playAudio,
    TResult? Function()? pauseAudio,
    TResult? Function()? backButtonPressed,
  }) {
    return pauseAudio?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Audio audio, int index, bool isNavigationEnabled)?
        playStorageAudio,
    TResult Function()? playAudio,
    TResult Function()? pauseAudio,
    TResult Function()? backButtonPressed,
    required TResult orElse(),
  }) {
    if (pauseAudio != null) {
      return pauseAudio();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_PlayStorageAudio value) playStorageAudio,
    required TResult Function(_PlayAudio value) playAudio,
    required TResult Function(_PauseAudio value) pauseAudio,
    required TResult Function(_BackButtonPressed value) backButtonPressed,
  }) {
    return pauseAudio(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_PlayStorageAudio value)? playStorageAudio,
    TResult? Function(_PlayAudio value)? playAudio,
    TResult? Function(_PauseAudio value)? pauseAudio,
    TResult? Function(_BackButtonPressed value)? backButtonPressed,
  }) {
    return pauseAudio?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_PlayStorageAudio value)? playStorageAudio,
    TResult Function(_PlayAudio value)? playAudio,
    TResult Function(_PauseAudio value)? pauseAudio,
    TResult Function(_BackButtonPressed value)? backButtonPressed,
    required TResult orElse(),
  }) {
    if (pauseAudio != null) {
      return pauseAudio(this);
    }
    return orElse();
  }
}

abstract class _PauseAudio implements AudioEvent {
  const factory _PauseAudio() = _$PauseAudioImpl;
}

/// @nodoc
abstract class _$$BackButtonPressedImplCopyWith<$Res> {
  factory _$$BackButtonPressedImplCopyWith(_$BackButtonPressedImpl value,
          $Res Function(_$BackButtonPressedImpl) then) =
      __$$BackButtonPressedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$BackButtonPressedImplCopyWithImpl<$Res>
    extends _$AudioEventCopyWithImpl<$Res, _$BackButtonPressedImpl>
    implements _$$BackButtonPressedImplCopyWith<$Res> {
  __$$BackButtonPressedImplCopyWithImpl(_$BackButtonPressedImpl _value,
      $Res Function(_$BackButtonPressedImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$BackButtonPressedImpl implements _BackButtonPressed {
  const _$BackButtonPressedImpl();

  @override
  String toString() {
    return 'AudioEvent.backButtonPressed()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$BackButtonPressedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Audio audio, int index, bool isNavigationEnabled)
        playStorageAudio,
    required TResult Function() playAudio,
    required TResult Function() pauseAudio,
    required TResult Function() backButtonPressed,
  }) {
    return backButtonPressed();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Audio audio, int index, bool isNavigationEnabled)?
        playStorageAudio,
    TResult? Function()? playAudio,
    TResult? Function()? pauseAudio,
    TResult? Function()? backButtonPressed,
  }) {
    return backButtonPressed?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Audio audio, int index, bool isNavigationEnabled)?
        playStorageAudio,
    TResult Function()? playAudio,
    TResult Function()? pauseAudio,
    TResult Function()? backButtonPressed,
    required TResult orElse(),
  }) {
    if (backButtonPressed != null) {
      return backButtonPressed();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_PlayStorageAudio value) playStorageAudio,
    required TResult Function(_PlayAudio value) playAudio,
    required TResult Function(_PauseAudio value) pauseAudio,
    required TResult Function(_BackButtonPressed value) backButtonPressed,
  }) {
    return backButtonPressed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_PlayStorageAudio value)? playStorageAudio,
    TResult? Function(_PlayAudio value)? playAudio,
    TResult? Function(_PauseAudio value)? pauseAudio,
    TResult? Function(_BackButtonPressed value)? backButtonPressed,
  }) {
    return backButtonPressed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_PlayStorageAudio value)? playStorageAudio,
    TResult Function(_PlayAudio value)? playAudio,
    TResult Function(_PauseAudio value)? pauseAudio,
    TResult Function(_BackButtonPressed value)? backButtonPressed,
    required TResult orElse(),
  }) {
    if (backButtonPressed != null) {
      return backButtonPressed(this);
    }
    return orElse();
  }
}

abstract class _BackButtonPressed implements AudioEvent {
  const factory _BackButtonPressed() = _$BackButtonPressedImpl;
}

/// @nodoc
mixin _$AudioState {
  int get index => throw _privateConstructorUsedError;
  bool get isPlaying =>
      throw _privateConstructorUsedError; //this for playscreennavigation
  bool get isNavigationEnable => throw _privateConstructorUsedError;
  Audio get audio => throw _privateConstructorUsedError;
  Option<Either<AudioFailure, Unit>> get failureOrSuccessOption =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AudioStateCopyWith<AudioState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AudioStateCopyWith<$Res> {
  factory $AudioStateCopyWith(
          AudioState value, $Res Function(AudioState) then) =
      _$AudioStateCopyWithImpl<$Res, AudioState>;
  @useResult
  $Res call(
      {int index,
      bool isPlaying,
      bool isNavigationEnable,
      Audio audio,
      Option<Either<AudioFailure, Unit>> failureOrSuccessOption});

  $AudioCopyWith<$Res> get audio;
}

/// @nodoc
class _$AudioStateCopyWithImpl<$Res, $Val extends AudioState>
    implements $AudioStateCopyWith<$Res> {
  _$AudioStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? index = null,
    Object? isPlaying = null,
    Object? isNavigationEnable = null,
    Object? audio = null,
    Object? failureOrSuccessOption = null,
  }) {
    return _then(_value.copyWith(
      index: null == index
          ? _value.index
          : index // ignore: cast_nullable_to_non_nullable
              as int,
      isPlaying: null == isPlaying
          ? _value.isPlaying
          : isPlaying // ignore: cast_nullable_to_non_nullable
              as bool,
      isNavigationEnable: null == isNavigationEnable
          ? _value.isNavigationEnable
          : isNavigationEnable // ignore: cast_nullable_to_non_nullable
              as bool,
      audio: null == audio
          ? _value.audio
          : audio // ignore: cast_nullable_to_non_nullable
              as Audio,
      failureOrSuccessOption: null == failureOrSuccessOption
          ? _value.failureOrSuccessOption
          : failureOrSuccessOption // ignore: cast_nullable_to_non_nullable
              as Option<Either<AudioFailure, Unit>>,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $AudioCopyWith<$Res> get audio {
    return $AudioCopyWith<$Res>(_value.audio, (value) {
      return _then(_value.copyWith(audio: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$AudioStateImplCopyWith<$Res>
    implements $AudioStateCopyWith<$Res> {
  factory _$$AudioStateImplCopyWith(
          _$AudioStateImpl value, $Res Function(_$AudioStateImpl) then) =
      __$$AudioStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int index,
      bool isPlaying,
      bool isNavigationEnable,
      Audio audio,
      Option<Either<AudioFailure, Unit>> failureOrSuccessOption});

  @override
  $AudioCopyWith<$Res> get audio;
}

/// @nodoc
class __$$AudioStateImplCopyWithImpl<$Res>
    extends _$AudioStateCopyWithImpl<$Res, _$AudioStateImpl>
    implements _$$AudioStateImplCopyWith<$Res> {
  __$$AudioStateImplCopyWithImpl(
      _$AudioStateImpl _value, $Res Function(_$AudioStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? index = null,
    Object? isPlaying = null,
    Object? isNavigationEnable = null,
    Object? audio = null,
    Object? failureOrSuccessOption = null,
  }) {
    return _then(_$AudioStateImpl(
      index: null == index
          ? _value.index
          : index // ignore: cast_nullable_to_non_nullable
              as int,
      isPlaying: null == isPlaying
          ? _value.isPlaying
          : isPlaying // ignore: cast_nullable_to_non_nullable
              as bool,
      isNavigationEnable: null == isNavigationEnable
          ? _value.isNavigationEnable
          : isNavigationEnable // ignore: cast_nullable_to_non_nullable
              as bool,
      audio: null == audio
          ? _value.audio
          : audio // ignore: cast_nullable_to_non_nullable
              as Audio,
      failureOrSuccessOption: null == failureOrSuccessOption
          ? _value.failureOrSuccessOption
          : failureOrSuccessOption // ignore: cast_nullable_to_non_nullable
              as Option<Either<AudioFailure, Unit>>,
    ));
  }
}

/// @nodoc

class _$AudioStateImpl implements _AudioState {
  const _$AudioStateImpl(
      {required this.index,
      required this.isPlaying,
      required this.isNavigationEnable,
      required this.audio,
      required this.failureOrSuccessOption});

  @override
  final int index;
  @override
  final bool isPlaying;
//this for playscreennavigation
  @override
  final bool isNavigationEnable;
  @override
  final Audio audio;
  @override
  final Option<Either<AudioFailure, Unit>> failureOrSuccessOption;

  @override
  String toString() {
    return 'AudioState(index: $index, isPlaying: $isPlaying, isNavigationEnable: $isNavigationEnable, audio: $audio, failureOrSuccessOption: $failureOrSuccessOption)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AudioStateImpl &&
            (identical(other.index, index) || other.index == index) &&
            (identical(other.isPlaying, isPlaying) ||
                other.isPlaying == isPlaying) &&
            (identical(other.isNavigationEnable, isNavigationEnable) ||
                other.isNavigationEnable == isNavigationEnable) &&
            (identical(other.audio, audio) || other.audio == audio) &&
            (identical(other.failureOrSuccessOption, failureOrSuccessOption) ||
                other.failureOrSuccessOption == failureOrSuccessOption));
  }

  @override
  int get hashCode => Object.hash(runtimeType, index, isPlaying,
      isNavigationEnable, audio, failureOrSuccessOption);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AudioStateImplCopyWith<_$AudioStateImpl> get copyWith =>
      __$$AudioStateImplCopyWithImpl<_$AudioStateImpl>(this, _$identity);
}

abstract class _AudioState implements AudioState {
  const factory _AudioState(
      {required final int index,
      required final bool isPlaying,
      required final bool isNavigationEnable,
      required final Audio audio,
      required final Option<Either<AudioFailure, Unit>>
          failureOrSuccessOption}) = _$AudioStateImpl;

  @override
  int get index;
  @override
  bool get isPlaying;
  @override //this for playscreennavigation
  bool get isNavigationEnable;
  @override
  Audio get audio;
  @override
  Option<Either<AudioFailure, Unit>> get failureOrSuccessOption;
  @override
  @JsonKey(ignore: true)
  _$$AudioStateImplCopyWith<_$AudioStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
