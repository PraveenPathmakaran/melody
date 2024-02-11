// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'favourite_actor_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$FavouriteActorEvent {
  Audio get audio => throw _privateConstructorUsedError;
  PlayListName get playListName => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Audio audio, PlayListName playListName)
        favouriteButtonClicked,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Audio audio, PlayListName playListName)?
        favouriteButtonClicked,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Audio audio, PlayListName playListName)?
        favouriteButtonClicked,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FavouriteButtonClicked value)
        favouriteButtonClicked,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FavouriteButtonClicked value)? favouriteButtonClicked,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FavouriteButtonClicked value)? favouriteButtonClicked,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $FavouriteActorEventCopyWith<FavouriteActorEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FavouriteActorEventCopyWith<$Res> {
  factory $FavouriteActorEventCopyWith(
          FavouriteActorEvent value, $Res Function(FavouriteActorEvent) then) =
      _$FavouriteActorEventCopyWithImpl<$Res, FavouriteActorEvent>;
  @useResult
  $Res call({Audio audio, PlayListName playListName});

  $AudioCopyWith<$Res> get audio;
}

/// @nodoc
class _$FavouriteActorEventCopyWithImpl<$Res, $Val extends FavouriteActorEvent>
    implements $FavouriteActorEventCopyWith<$Res> {
  _$FavouriteActorEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? audio = null,
    Object? playListName = null,
  }) {
    return _then(_value.copyWith(
      audio: null == audio
          ? _value.audio
          : audio // ignore: cast_nullable_to_non_nullable
              as Audio,
      playListName: null == playListName
          ? _value.playListName
          : playListName // ignore: cast_nullable_to_non_nullable
              as PlayListName,
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
abstract class _$$FavouriteButtonClickedImplCopyWith<$Res>
    implements $FavouriteActorEventCopyWith<$Res> {
  factory _$$FavouriteButtonClickedImplCopyWith(
          _$FavouriteButtonClickedImpl value,
          $Res Function(_$FavouriteButtonClickedImpl) then) =
      __$$FavouriteButtonClickedImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Audio audio, PlayListName playListName});

  @override
  $AudioCopyWith<$Res> get audio;
}

/// @nodoc
class __$$FavouriteButtonClickedImplCopyWithImpl<$Res>
    extends _$FavouriteActorEventCopyWithImpl<$Res,
        _$FavouriteButtonClickedImpl>
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
    return 'FavouriteActorEvent.favouriteButtonClicked(audio: $audio, playListName: $playListName)';
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
    required TResult Function(Audio audio, PlayListName playListName)
        favouriteButtonClicked,
  }) {
    return favouriteButtonClicked(audio, playListName);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Audio audio, PlayListName playListName)?
        favouriteButtonClicked,
  }) {
    return favouriteButtonClicked?.call(audio, playListName);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
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
    required TResult Function(_FavouriteButtonClicked value)
        favouriteButtonClicked,
  }) {
    return favouriteButtonClicked(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FavouriteButtonClicked value)? favouriteButtonClicked,
  }) {
    return favouriteButtonClicked?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FavouriteButtonClicked value)? favouriteButtonClicked,
    required TResult orElse(),
  }) {
    if (favouriteButtonClicked != null) {
      return favouriteButtonClicked(this);
    }
    return orElse();
  }
}

abstract class _FavouriteButtonClicked implements FavouriteActorEvent {
  const factory _FavouriteButtonClicked(
      {required final Audio audio,
      required final PlayListName playListName}) = _$FavouriteButtonClickedImpl;

  @override
  Audio get audio;
  @override
  PlayListName get playListName;
  @override
  @JsonKey(ignore: true)
  _$$FavouriteButtonClickedImplCopyWith<_$FavouriteButtonClickedImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$FavouriteActorState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() success,
    required TResult Function() error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? success,
    TResult? Function()? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? success,
    TResult Function()? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Loading value) initial,
    required TResult Function(_Loaded value) success,
    required TResult Function(_Error value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Loading value)? initial,
    TResult? Function(_Loaded value)? success,
    TResult? Function(_Error value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Loading value)? initial,
    TResult Function(_Loaded value)? success,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FavouriteActorStateCopyWith<$Res> {
  factory $FavouriteActorStateCopyWith(
          FavouriteActorState value, $Res Function(FavouriteActorState) then) =
      _$FavouriteActorStateCopyWithImpl<$Res, FavouriteActorState>;
}

/// @nodoc
class _$FavouriteActorStateCopyWithImpl<$Res, $Val extends FavouriteActorState>
    implements $FavouriteActorStateCopyWith<$Res> {
  _$FavouriteActorStateCopyWithImpl(this._value, this._then);

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
    extends _$FavouriteActorStateCopyWithImpl<$Res, _$LoadingImpl>
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
    return 'FavouriteActorState.initial()';
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
    required TResult Function() initial,
    required TResult Function() success,
    required TResult Function() error,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? success,
    TResult? Function()? error,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? success,
    TResult Function()? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Loading value) initial,
    required TResult Function(_Loaded value) success,
    required TResult Function(_Error value) error,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Loading value)? initial,
    TResult? Function(_Loaded value)? success,
    TResult? Function(_Error value)? error,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Loading value)? initial,
    TResult Function(_Loaded value)? success,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Loading implements FavouriteActorState {
  const factory _Loading() = _$LoadingImpl;
}

/// @nodoc
abstract class _$$LoadedImplCopyWith<$Res> {
  factory _$$LoadedImplCopyWith(
          _$LoadedImpl value, $Res Function(_$LoadedImpl) then) =
      __$$LoadedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoadedImplCopyWithImpl<$Res>
    extends _$FavouriteActorStateCopyWithImpl<$Res, _$LoadedImpl>
    implements _$$LoadedImplCopyWith<$Res> {
  __$$LoadedImplCopyWithImpl(
      _$LoadedImpl _value, $Res Function(_$LoadedImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$LoadedImpl implements _Loaded {
  const _$LoadedImpl();

  @override
  String toString() {
    return 'FavouriteActorState.success()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LoadedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() success,
    required TResult Function() error,
  }) {
    return success();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? success,
    TResult? Function()? error,
  }) {
    return success?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? success,
    TResult Function()? error,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Loading value) initial,
    required TResult Function(_Loaded value) success,
    required TResult Function(_Error value) error,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Loading value)? initial,
    TResult? Function(_Loaded value)? success,
    TResult? Function(_Error value)? error,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Loading value)? initial,
    TResult Function(_Loaded value)? success,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class _Loaded implements FavouriteActorState {
  const factory _Loaded() = _$LoadedImpl;
}

/// @nodoc
abstract class _$$ErrorImplCopyWith<$Res> {
  factory _$$ErrorImplCopyWith(
          _$ErrorImpl value, $Res Function(_$ErrorImpl) then) =
      __$$ErrorImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ErrorImplCopyWithImpl<$Res>
    extends _$FavouriteActorStateCopyWithImpl<$Res, _$ErrorImpl>
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
    return 'FavouriteActorState.error()';
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
    required TResult Function() initial,
    required TResult Function() success,
    required TResult Function() error,
  }) {
    return error();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? success,
    TResult? Function()? error,
  }) {
    return error?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? success,
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
    required TResult Function(_Loading value) initial,
    required TResult Function(_Loaded value) success,
    required TResult Function(_Error value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Loading value)? initial,
    TResult? Function(_Loaded value)? success,
    TResult? Function(_Error value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Loading value)? initial,
    TResult Function(_Loaded value)? success,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _Error implements FavouriteActorState {
  const factory _Error() = _$ErrorImpl;
}
