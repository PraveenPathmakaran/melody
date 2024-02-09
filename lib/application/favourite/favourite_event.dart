part of 'favourite_bloc.dart';

@freezed
class FavouriteEvent with _$FavouriteEvent {
  const factory FavouriteEvent.concatenatingAudios(
      {required List<Audio> audios}) = _ConcatenatingAudios;
  const factory FavouriteEvent.favouriteButtonClicked({required Audio audio}) =
      _FavouriteButtonClicked;
}
