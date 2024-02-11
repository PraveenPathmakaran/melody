part of 'favourite_actor_bloc.dart';

@freezed
class FavouriteActorEvent with _$FavouriteActorEvent {
  const factory FavouriteActorEvent.favouriteButtonClicked(
      {required Audio audio,required PlayListName playListName}) = _FavouriteButtonClicked;
}
