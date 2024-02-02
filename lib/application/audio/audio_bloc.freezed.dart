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
    required TResult Function() concatenatingAudios,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? concatenatingAudios,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? concatenatingAudios,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ConcatenatingAudios value) concatenatingAudios,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ConcatenatingAudios value)? concatenatingAudios,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ConcatenatingAudios value)? concatenatingAudios,
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
abstract class _$$ConcatenatingAudiosImplCopyWith<$Res> {
  factory _$$ConcatenatingAudiosImplCopyWith(_$ConcatenatingAudiosImpl value,
          $Res Function(_$ConcatenatingAudiosImpl) then) =
      __$$ConcatenatingAudiosImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ConcatenatingAudiosImplCopyWithImpl<$Res>
    extends _$AudioEventCopyWithImpl<$Res, _$ConcatenatingAudiosImpl>
    implements _$$ConcatenatingAudiosImplCopyWith<$Res> {
  __$$ConcatenatingAudiosImplCopyWithImpl(_$ConcatenatingAudiosImpl _value,
      $Res Function(_$ConcatenatingAudiosImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$ConcatenatingAudiosImpl
    with DiagnosticableTreeMixin
    implements _ConcatenatingAudios {
  const _$ConcatenatingAudiosImpl();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'AudioEvent.concatenatingAudios()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
        .add(DiagnosticsProperty('type', 'AudioEvent.concatenatingAudios'));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ConcatenatingAudiosImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() concatenatingAudios,
  }) {
    return concatenatingAudios();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? concatenatingAudios,
  }) {
    return concatenatingAudios?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? concatenatingAudios,
    required TResult orElse(),
  }) {
    if (concatenatingAudios != null) {
      return concatenatingAudios();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ConcatenatingAudios value) concatenatingAudios,
  }) {
    return concatenatingAudios(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ConcatenatingAudios value)? concatenatingAudios,
  }) {
    return concatenatingAudios?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ConcatenatingAudios value)? concatenatingAudios,
    required TResult orElse(),
  }) {
    if (concatenatingAudios != null) {
      return concatenatingAudios(this);
    }
    return orElse();
  }
}

abstract class _ConcatenatingAudios implements AudioEvent {
  const factory _ConcatenatingAudios() = _$ConcatenatingAudiosImpl;
}

/// @nodoc
mixin _$AudioState {
  List<Id> get audioId => throw _privateConstructorUsedError;
  LoadingState get loadingState =>
      throw _privateConstructorUsedError; //for pagination list tile loading indicator
  bool get isTileLoading =>
      throw _privateConstructorUsedError; //after all audio fetched from device then it change true
  bool get isAudioListEmpty => throw _privateConstructorUsedError;

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
      {List<Id> audioId,
      LoadingState loadingState,
      bool isTileLoading,
      bool isAudioListEmpty});
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
    Object? audioId = null,
    Object? loadingState = null,
    Object? isTileLoading = null,
    Object? isAudioListEmpty = null,
  }) {
    return _then(_value.copyWith(
      audioId: null == audioId
          ? _value.audioId
          : audioId // ignore: cast_nullable_to_non_nullable
              as List<Id>,
      loadingState: null == loadingState
          ? _value.loadingState
          : loadingState // ignore: cast_nullable_to_non_nullable
              as LoadingState,
      isTileLoading: null == isTileLoading
          ? _value.isTileLoading
          : isTileLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      isAudioListEmpty: null == isAudioListEmpty
          ? _value.isAudioListEmpty
          : isAudioListEmpty // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
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
      {List<Id> audioId,
      LoadingState loadingState,
      bool isTileLoading,
      bool isAudioListEmpty});
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
    Object? audioId = null,
    Object? loadingState = null,
    Object? isTileLoading = null,
    Object? isAudioListEmpty = null,
  }) {
    return _then(_$AudioStateImpl(
      audioId: null == audioId
          ? _value._audioId
          : audioId // ignore: cast_nullable_to_non_nullable
              as List<Id>,
      loadingState: null == loadingState
          ? _value.loadingState
          : loadingState // ignore: cast_nullable_to_non_nullable
              as LoadingState,
      isTileLoading: null == isTileLoading
          ? _value.isTileLoading
          : isTileLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      isAudioListEmpty: null == isAudioListEmpty
          ? _value.isAudioListEmpty
          : isAudioListEmpty // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$AudioStateImpl with DiagnosticableTreeMixin implements _AudioState {
  const _$AudioStateImpl(
      {required final List<Id> audioId,
      required this.loadingState,
      required this.isTileLoading,
      required this.isAudioListEmpty})
      : _audioId = audioId;

  final List<Id> _audioId;
  @override
  List<Id> get audioId {
    if (_audioId is EqualUnmodifiableListView) return _audioId;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_audioId);
  }

  @override
  final LoadingState loadingState;
//for pagination list tile loading indicator
  @override
  final bool isTileLoading;
//after all audio fetched from device then it change true
  @override
  final bool isAudioListEmpty;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'AudioState(audioId: $audioId, loadingState: $loadingState, isTileLoading: $isTileLoading, isAudioListEmpty: $isAudioListEmpty)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'AudioState'))
      ..add(DiagnosticsProperty('audioId', audioId))
      ..add(DiagnosticsProperty('loadingState', loadingState))
      ..add(DiagnosticsProperty('isTileLoading', isTileLoading))
      ..add(DiagnosticsProperty('isAudioListEmpty', isAudioListEmpty));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AudioStateImpl &&
            const DeepCollectionEquality().equals(other._audioId, _audioId) &&
            (identical(other.loadingState, loadingState) ||
                other.loadingState == loadingState) &&
            (identical(other.isTileLoading, isTileLoading) ||
                other.isTileLoading == isTileLoading) &&
            (identical(other.isAudioListEmpty, isAudioListEmpty) ||
                other.isAudioListEmpty == isAudioListEmpty));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_audioId),
      loadingState,
      isTileLoading,
      isAudioListEmpty);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AudioStateImplCopyWith<_$AudioStateImpl> get copyWith =>
      __$$AudioStateImplCopyWithImpl<_$AudioStateImpl>(this, _$identity);
}

abstract class _AudioState implements AudioState {
  const factory _AudioState(
      {required final List<Id> audioId,
      required final LoadingState loadingState,
      required final bool isTileLoading,
      required final bool isAudioListEmpty}) = _$AudioStateImpl;

  @override
  List<Id> get audioId;
  @override
  LoadingState get loadingState;
  @override //for pagination list tile loading indicator
  bool get isTileLoading;
  @override //after all audio fetched from device then it change true
  bool get isAudioListEmpty;
  @override
  @JsonKey(ignore: true)
  _$$AudioStateImplCopyWith<_$AudioStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
