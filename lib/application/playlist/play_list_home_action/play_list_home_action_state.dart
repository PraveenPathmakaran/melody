part of 'play_list_home_action_bloc.dart';

@freezed
class PlayListHomeActionState with _$PlayListHomeActionState {
  const factory PlayListHomeActionState({
    required PlayListName playListName,
    required bool showErrorMessage,
    required bool isSubmitting,
    required Option<Either<DataBaseFailure, Unit>> failureOrSuccessOption,
  }) = _PlayListHomeActionState;

  factory PlayListHomeActionState.initial() => PlayListHomeActionState(
      playListName: PlayListName(""),
      showErrorMessage: false,
      isSubmitting: false,
      failureOrSuccessOption: none());
}
