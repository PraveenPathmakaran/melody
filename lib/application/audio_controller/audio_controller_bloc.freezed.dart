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
    required TResult Function() closeStream,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? listenAllStreams,
    TResult? Function()? closeStream,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? listenAllStreams,
    TResult Function()? closeStream,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ListenAllStreams value) listenAllStreams,
    required TResult Function(_CloseStream value) closeStream,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ListenAllStreams value)? listenAllStreams,
    TResult? Function(_CloseStream value)? closeStream,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ListenAllStreams value)? listenAllStreams,
    TResult Function(_CloseStream value)? closeStream,
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
    required TResult Function() closeStream,
  }) {
    return listenAllStreams();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? listenAllStreams,
    TResult? Function()? closeStream,
  }) {
    return listenAllStreams?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? listenAllStreams,
    TResult Function()? closeStream,
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
    required TResult Function(_CloseStream value) closeStream,
  }) {
    return listenAllStreams(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ListenAllStreams value)? listenAllStreams,
    TResult? Function(_CloseStream value)? closeStream,
  }) {
    return listenAllStreams?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ListenAllStreams value)? listenAllStreams,
    TResult Function(_CloseStream value)? closeStream,
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
abstract class _$$CloseStreamImplCopyWith<$Res> {
  factory _$$CloseStreamImplCopyWith(
          _$CloseStreamImpl value, $Res Function(_$CloseStreamImpl) then) =
      __$$CloseStreamImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$CloseStreamImplCopyWithImpl<$Res>
    extends _$AudioControllerEventCopyWithImpl<$Res, _$CloseStreamImpl>
    implements _$$CloseStreamImplCopyWith<$Res> {
  __$$CloseStreamImplCopyWithImpl(
      _$CloseStreamImpl _value, $Res Function(_$CloseStreamImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$CloseStreamImpl implements _CloseStream {
  const _$CloseStreamImpl();

  @override
  String toString() {
    return 'AudioControllerEvent.closeStream()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$CloseStreamImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() listenAllStreams,
    required TResult Function() closeStream,
  }) {
    return closeStream();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? listenAllStreams,
    TResult? Function()? closeStream,
  }) {
    return closeStream?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? listenAllStreams,
    TResult Function()? closeStream,
    required TResult orElse(),
  }) {
    if (closeStream != null) {
      return closeStream();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ListenAllStreams value) listenAllStreams,
    required TResult Function(_CloseStream value) closeStream,
  }) {
    return closeStream(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ListenAllStreams value)? listenAllStreams,
    TResult? Function(_CloseStream value)? closeStream,
  }) {
    return closeStream?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ListenAllStreams value)? listenAllStreams,
    TResult Function(_CloseStream value)? closeStream,
    required TResult orElse(),
  }) {
    if (closeStream != null) {
      return closeStream(this);
    }
    return orElse();
  }
}

abstract class _CloseStream implements AudioControllerEvent {
  const factory _CloseStream() = _$CloseStreamImpl;
}

/// @nodoc
mixin _$AudioControllerState {
  AudioDuration get current => throw _privateConstructorUsedError;
  AudioDuration get buffered => throw _privateConstructorUsedError;
  AudioDuration get total => throw _privateConstructorUsedError;
  Audio get audio => throw _privateConstructorUsedError;
  ButtonState get buttonState => throw _privateConstructorUsedError;

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
      {AudioDuration current,
      AudioDuration buffered,
      AudioDuration total,
      Audio audio,
      ButtonState buttonState});

  $AudioCopyWith<$Res> get audio;
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
    Object? audio = null,
    Object? buttonState = null,
  }) {
    return _then(_value.copyWith(
      current: null == current
          ? _value.current
          : current // ignore: cast_nullable_to_non_nullable
              as AudioDuration,
      buffered: null == buffered
          ? _value.buffered
          : buffered // ignore: cast_nullable_to_non_nullable
              as AudioDuration,
      total: null == total
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as AudioDuration,
      audio: null == audio
          ? _value.audio
          : audio // ignore: cast_nullable_to_non_nullable
              as Audio,
      buttonState: null == buttonState
          ? _value.buttonState
          : buttonState // ignore: cast_nullable_to_non_nullable
              as ButtonState,
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
abstract class _$$AudioControllerStateImplCopyWith<$Res>
    implements $AudioControllerStateCopyWith<$Res> {
  factory _$$AudioControllerStateImplCopyWith(_$AudioControllerStateImpl value,
          $Res Function(_$AudioControllerStateImpl) then) =
      __$$AudioControllerStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {AudioDuration current,
      AudioDuration buffered,
      AudioDuration total,
      Audio audio,
      ButtonState buttonState});

  @override
  $AudioCopyWith<$Res> get audio;
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
    Object? audio = null,
    Object? buttonState = null,
  }) {
    return _then(_$AudioControllerStateImpl(
      current: null == current
          ? _value.current
          : current // ignore: cast_nullable_to_non_nullable
              as AudioDuration,
      buffered: null == buffered
          ? _value.buffered
          : buffered // ignore: cast_nullable_to_non_nullable
              as AudioDuration,
      total: null == total
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as AudioDuration,
      audio: null == audio
          ? _value.audio
          : audio // ignore: cast_nullable_to_non_nullable
              as Audio,
      buttonState: null == buttonState
          ? _value.buttonState
          : buttonState // ignore: cast_nullable_to_non_nullable
              as ButtonState,
    ));
  }
}

/// @nodoc

class _$AudioControllerStateImpl implements _AudioControllerState {
  const _$AudioControllerStateImpl(
      {required this.current,
      required this.buffered,
      required this.total,
      required this.audio,
      required this.buttonState});

  @override
  final AudioDuration current;
  @override
  final AudioDuration buffered;
  @override
  final AudioDuration total;
  @override
  final Audio audio;
  @override
  final ButtonState buttonState;

  @override
  String toString() {
    return 'AudioControllerState(current: $current, buffered: $buffered, total: $total, audio: $audio, buttonState: $buttonState)';
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
            (identical(other.audio, audio) || other.audio == audio) &&
            (identical(other.buttonState, buttonState) ||
                other.buttonState == buttonState));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, current, buffered, total, audio, buttonState);

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
      {required final AudioDuration current,
      required final AudioDuration buffered,
      required final AudioDuration total,
      required final Audio audio,
      required final ButtonState buttonState}) = _$AudioControllerStateImpl;

  @override
  AudioDuration get current;
  @override
  AudioDuration get buffered;
  @override
  AudioDuration get total;
  @override
  Audio get audio;
  @override
  ButtonState get buttonState;
  @override
  @JsonKey(ignore: true)
  _$$AudioControllerStateImplCopyWith<_$AudioControllerStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}
