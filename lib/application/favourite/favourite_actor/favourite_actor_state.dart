part of 'favourite_actor_bloc.dart';

@freezed
class FavouriteActorState with _$FavouriteActorState {
  const factory FavouriteActorState.initial() = _Loading;
  const factory FavouriteActorState.success() = _Loaded;
  const factory FavouriteActorState.error() = _Error;
}
