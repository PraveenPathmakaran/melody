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
    required TResult Function() listenAllStreams,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? listenAllStreams,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? listenAllStreams,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ListenAllStreams value) listenAllStreams,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ListenAllStreams value)? listenAllStreams,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ListenAllStreams value)? listenAllStreams,
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
abstract class _$$ListenAllStreamsImplCopyWith<$Res> {
  factory _$$ListenAllStreamsImplCopyWith(_$ListenAllStreamsImpl value,
          $Res Function(_$ListenAllStreamsImpl) then) =
      __$$ListenAllStreamsImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ListenAllStreamsImplCopyWithImpl<$Res>
    extends _$AudioControllerEventCopyWithImpl<$Res, _$ListenAllStreamsImpl>
    implements _$$ListenAllStreamsImplCopyWith<$Res> {
  __$$ListenAllStreamsImplCopyWithImpl(_$ListenAllStreamsImpl _value,
      $Res Function(_$ListenAllStreamsImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$ListenAllStreamsImpl implements _ListenAllStreams {
  const _$ListenAllStreamsImpl();

  @override
  String toString() {
    return 'AudioControllerEvent.listenAllStreams()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ListenAllStreamsImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() listenAllStreams,
  }) {
    return listenAllStreams();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? listenAllStreams,
  }) {
    return listenAllStreams?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? listenAllStreams,
    required TResult orElse(),
  }) {
    if (listenAllStreams != null) {
      return listenAllStreams();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ListenAllStreams value) listenAllStreams,
  }) {
    return listenAllStreams(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ListenAllStreams value)? listenAllStreams,
  }) {
    return listenAllStreams?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ListenAllStreams value)? listenAllStreams,
    required TResult orElse(),
  }) {
    if (listenAllStreams != null) {
      return listenAllStreams(this);
    }
    return orElse();
  }
}

abstract class _ListenAllStreams implements AudioControllerEvent {
  const factory _ListenAllStreams() = _$ListenAllStreamsImpl;
}

/// @nodoc
mixin _$AudioControllerState {
  Option<AudioDuration> get current => throw _privateConstructorUsedError;
  Option<AudioDuration> get buffered => throw _privateConstructorUsedError;
  Option<AudioDuration> get total => throw _privateConstructorUsedError;
  Option<AudioPath> get audioPath => throw _privateConstructorUsedError;
  Option<ButtonState> get buttonState => throw _privateConstructorUsedError;
  Option<bool> get isShuffleMode => throw _privateConstructorUsedError;
  Option<bool> get miniPlayerVisibility => throw _privateConstructorUsedError;
  Option<AudioLoopMode> get audioLoopMode => throw _privateConstructorUsedError;

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
  $Res call(
      {Option<AudioDuration> current,
      Option<AudioDuration> buffered,
      Option<AudioDuration> total,
      Option<AudioPath> audioPath,
      Option<ButtonState> buttonState,
      Option<bool> isShuffleMode,
      Option<bool> miniPlayerVisibility,
      Option<AudioLoopMode> audioLoopMode});
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
    Object? current = null,
    Object? buffered = null,
    Object? total = null,
    Object? audioPath = null,
    Object? buttonState = null,
    Object? isShuffleMode = null,
    Object? miniPlayerVisibility = null,
    Object? audioLoopMode = null,
  }) {
    return _then(_value.copyWith(
      current: null == current
          ? _value.current
          : current // ignore: cast_nullable_to_non_nullable
              as Option<AudioDuration>,
      buffered: null == buffered
          ? _value.buffered
          : buffered // ignore: cast_nullable_to_non_nullable
              as Option<AudioDuration>,
      total: null == total
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as Option<AudioDuration>,
      audioPath: null == audioPath
          ? _value.audioPath
          : audioPath // ignore: cast_nullable_to_non_nullable
              as Option<AudioPath>,
      buttonState: null == buttonState
          ? _value.buttonState
          : buttonState // ignore: cast_nullable_to_non_nullable
              as Option<ButtonState>,
      isShuffleMode: null == isShuffleMode
          ? _value.isShuffleMode
          : isShuffleMode // ignore: cast_nullable_to_non_nullable
              as Option<bool>,
      miniPlayerVisibility: null == miniPlayerVisibility
          ? _value.miniPlayerVisibility
          : miniPlayerVisibility // ignore: cast_nullable_to_non_nullable
              as Option<bool>,
      audioLoopMode: null == audioLoopMode
          ? _value.audioLoopMode
          : audioLoopMode // ignore: cast_nullable_to_non_nullable
              as Option<AudioLoopMode>,
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
  $Res call(
      {Option<AudioDuration> current,
      Option<AudioDuration> buffered,
      Option<AudioDuration> total,
      Option<AudioPath> audioPath,
      Option<ButtonState> buttonState,
      Option<bool> isShuffleMode,
      Option<bool> miniPlayerVisibility,
      Option<AudioLoopMode> audioLoopMode});
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
    Object? current = null,
    Object? buffered = null,
    Object? total = null,
    Object? audioPath = null,
    Object? buttonState = null,
    Object? isShuffleMode = null,
    Object? miniPlayerVisibility = null,
    Object? audioLoopMode = null,
  }) {
    return _then(_$AudioControllerStateImpl(
      current: null == current
          ? _value.current
          : current // ignore: cast_nullable_to_non_nullable
              as Option<AudioDuration>,
      buffered: null == buffered
          ? _value.buffered
          : buffered // ignore: cast_nullable_to_non_nullable
              as Option<AudioDuration>,
      total: null == total
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as Option<AudioDuration>,
      audioPath: null == audioPath
          ? _value.audioPath
          : audioPath // ignore: cast_nullable_to_non_nullable
              as Option<AudioPath>,
      buttonState: null == buttonState
          ? _value.buttonState
          : buttonState // ignore: cast_nullable_to_non_nullable
              as Option<ButtonState>,
      isShuffleMode: null == isShuffleMode
          ? _value.isShuffleMode
          : isShuffleMode // ignore: cast_nullable_to_non_nullable
              as Option<bool>,
      miniPlayerVisibility: null == miniPlayerVisibility
          ? _value.miniPlayerVisibility
          : miniPlayerVisibility // ignore: cast_nullable_to_non_nullable
              as Option<bool>,
      audioLoopMode: null == audioLoopMode
          ? _value.audioLoopMode
          : audioLoopMode // ignore: cast_nullable_to_non_nullable
              as Option<AudioLoopMode>,
    ));
  }
}

/// @nodoc

class _$AudioControllerStateImpl implements _AudioControllerState {
  const _$AudioControllerStateImpl(
      {required this.current,
      required this.buffered,
      required this.total,
      required this.audioPath,
      required this.buttonState,
      required this.isShuffleMode,
      required this.miniPlayerVisibility,
      required this.audioLoopMode});

  @override
  final Option<AudioDuration> current;
  @override
  final Option<AudioDuration> buffered;
  @override
  final Option<AudioDuration> total;
  @override
  final Option<AudioPath> audioPath;
  @override
  final Option<ButtonState> buttonState;
  @override
  final Option<bool> isShuffleMode;
  @override
  final Option<bool> miniPlayerVisibility;
  @override
  final Option<AudioLoopMode> audioLoopMode;

  @override
  String toString() {
    return 'AudioControllerState(current: $current, buffered: $buffered, total: $total, audioPath: $audioPath, buttonState: $buttonState, isShuffleMode: $isShuffleMode, miniPlayerVisibility: $miniPlayerVisibility, audioLoopMode: $audioLoopMode)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AudioControllerStateImpl &&
            (identical(other.current, current) || other.current == current) &&
            (identical(other.buffered, buffered) ||
                other.buffered == buffered) &&
            (identical(other.total, total) || other.total == total) &&
            (identical(other.audioPath, audioPath) ||
                other.audioPath == audioPath) &&
            (identical(other.buttonState, buttonState) ||
                other.buttonState == buttonState) &&
            (identical(other.isShuffleMode, isShuffleMode) ||
                other.isShuffleMode == isShuffleMode) &&
            (identical(other.miniPlayerVisibility, miniPlayerVisibility) ||
                other.miniPlayerVisibility == miniPlayerVisibility) &&
            (identical(other.audioLoopMode, audioLoopMode) ||
                other.audioLoopMode == audioLoopMode));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      current,
      buffered,
      total,
      audioPath,
      buttonState,
      isShuffleMode,
      miniPlayerVisibility,
      audioLoopMode);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AudioControllerStateImplCopyWith<_$AudioControllerStateImpl>
      get copyWith =>
          __$$AudioControllerStateImplCopyWithImpl<_$AudioControllerStateImpl>(
              this, _$identity);
}

abstract class _AudioControllerState implements AudioControllerState {
  const factory _AudioControllerState(
          {required final Option<AudioDuration> current,
          required final Option<AudioDuration> buffered,
          required final Option<AudioDuration> total,
          required final Option<AudioPath> audioPath,
          required final Option<ButtonState> buttonState,
          required final Option<bool> isShuffleMode,
          required final Option<bool> miniPlayerVisibility,
          required final Option<AudioLoopMode> audioLoopMode}) =
      _$AudioControllerStateImpl;

  @override
  Option<AudioDuration> get current;
  @override
  Option<AudioDuration> get buffered;
  @override
  Option<AudioDuration> get total;
  @override
  Option<AudioPath> get audioPath;
  @override
  Option<ButtonState> get buttonState;
  @override
  Option<bool> get isShuffleMode;
  @override
  Option<bool> get miniPlayerVisibility;
  @override
  Option<AudioLoopMode> get audioLoopMode;
  @override
  @JsonKey(ignore: true)
  _$$AudioControllerStateImplCopyWith<_$AudioControllerStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}
