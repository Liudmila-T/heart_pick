import 'package:freezed_annotation/freezed_annotation.dart';

part 'result_game_request.freezed.dart';
part 'result_game_request.g.dart';

@freezed
abstract class ResultGameRequest with _$ResultGameRequest {
  const factory ResultGameRequest({
    required int bonus,
    required List<int> likeIds,
  }) = _ResultGameRequest;

  factory ResultGameRequest.fromJson(Map<String, dynamic> json) => _$ResultGameRequestFromJson(json);
}
