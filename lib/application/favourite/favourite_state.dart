part of 'favourite_bloc.dart';

@freezed
class FavouriteState with _$FavouriteState {
  const factory FavouriteState.loading() = _Loading;
  const factory FavouriteState.loaded({
    required List<Audio> audioList,
    required List<Audio> newList,
  }) = _Loaded;
  const factory FavouriteState.error() = _Error;
}
