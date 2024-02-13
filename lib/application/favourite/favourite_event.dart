part of 'favourite_bloc.dart';

@freezed
class FavouriteEvent with _$FavouriteEvent {
  const factory FavouriteEvent.loadAudio(
      {required List<Audio> audios,
      required PlayListName playListName}) = _LoadAudio;
   const factory FavouriteEvent.favouriteButtonClicked(
      {required Audio audio,
      required PlayListName playListName}) = _FavouriteButtonClicked;

}
