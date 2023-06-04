import 'package:freezed_annotation/freezed_annotation.dart';
part 'main_failure.freezed.dart';

@freezed
class MainFailure with _$MainFailure {
  const factory MainFailure.clientFailures() = _clientFailures;
  const factory MainFailure.serverFailures() = _serverFailures;
}
