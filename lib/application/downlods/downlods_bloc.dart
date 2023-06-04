import 'dart:developer';
import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:meta/meta.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:netflix/domain/downloads/i_downloads_repo.dart';

import '../../domain/core/failures/main_failure.dart';
import '../../domain/downloads/models/downloads.dart';

part 'downlods_event.dart';
part 'downlods_state.dart';
part 'downlods_bloc.freezed.dart';

@injectable
class DownlodsBloc extends Bloc<DownlodsEvent, DownlodsState> {
  final IDownloadsRepo _downloadsRepo;

  DownlodsBloc(this._downloadsRepo) : super((DownlodsState.inital())) {
    on<_getDownloadsImages>((event, emit) async {
      emit(
        state.copyWith(
          isLoading: true,
          downloadsFailureOrSuccessOption: none(),
        ),
      );
      final Either<MainFailure, List<Downloads>> downloadsOption =
          await _downloadsRepo.getDownloadsImage();
      log(downloadsOption.toString());
      emit(downloadsOption.fold(
          (failure) => state.copyWith(
              isLoading: false,
              downloadsFailureOrSuccessOption: Some(Left(failure))),
          (success) => state.copyWith(
              isLoading: false,
              downlods: success,
              downloadsFailureOrSuccessOption: Some(Right(success)))));
    });
  }
}
