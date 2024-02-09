part of 'splash_bloc.dart';

@freezed
class SplashState with _$SplashState {
  const factory SplashState.loading() = _Loading;
  const factory SplashState.loaded({required List<Audio> audioList}) =
      _Loaded;
  const factory SplashState.error() = _Error;
}
