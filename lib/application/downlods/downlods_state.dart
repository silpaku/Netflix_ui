part of 'downlods_bloc.dart';

@freezed
class DownlodsState with _$DownlodsState {
  const factory DownlodsState({
    required bool isLoading,
    required List<Downloads> downlods,
    required Option<Either<MainFailure, List<Downloads>>>
        downloadsFailureOrSuccessOption,
  }) = _DownlodsState;

  factory DownlodsState.inital() {
    return const DownlodsState(
      isLoading: false,
      downloadsFailureOrSuccessOption: None(),
      downlods: [],
    );
  }
}
