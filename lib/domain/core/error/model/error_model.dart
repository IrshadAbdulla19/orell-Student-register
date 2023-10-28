import 'package:freezed_annotation/freezed_annotation.dart';
part 'error_model.freezed.dart';
part 'error_model.g.dart';

@freezed
class ErrorModel with _$ErrorModel {
  const factory ErrorModel({
    @JsonKey(name: "timestamp") required String timestamp,
    @JsonKey(name: "status") required int status,
    @JsonKey(name: "error") required String error,
    @JsonKey(name: "message") required String message,
    @JsonKey(name: "path") required String path,
  }) = _ErrorModel;

  factory ErrorModel.fromJson(Map<String, dynamic> json) =>
      _$ErrorModelFromJson(json);
}
