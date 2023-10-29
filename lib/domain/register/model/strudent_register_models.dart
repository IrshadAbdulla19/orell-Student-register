import 'package:freezed_annotation/freezed_annotation.dart';
part 'strudent_register_models.freezed.dart';
part 'strudent_register_models.g.dart';

@freezed
class AccadamicYearModel with _$AccadamicYearModel {
  const factory AccadamicYearModel({
    @JsonKey(name: "academicYearId") required int academicYearId,
    @JsonKey(name: "academicYear") required String academicYear,
    @JsonKey(name: "academicStart") required String academicStart,
    @JsonKey(name: "academicEnd") required String academicEnd,
    @JsonKey(name: "modifiedDate") required String modifiedDate,
  }) = _AccadamicYearModel;

  factory AccadamicYearModel.fromJson(Map<String, dynamic> json) =>
      _$AccadamicYearModelFromJson(json);
}

@freezed
class ClassListModel with _$ClassListModel {
  const factory ClassListModel({
    @JsonKey(name: "courseTreeId") required int courseTreeId,
    @JsonKey(name: "courseType") required String courseType,
    @JsonKey(name: "courseTypesId") required int courseTypesId,
    @JsonKey(name: "course") required String course,
    @JsonKey(name: "parentId") required int parentId,
  }) = _ClassListModel;

  factory ClassListModel.fromJson(Map<String, dynamic> json) =>
      _$ClassListModelFromJson(json);
}
