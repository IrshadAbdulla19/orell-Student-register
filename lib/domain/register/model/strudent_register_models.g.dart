// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'strudent_register_models.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AccadamicYearModelImpl _$$AccadamicYearModelImplFromJson(
        Map<String, dynamic> json) =>
    _$AccadamicYearModelImpl(
      academicYearId: json['academicYearId'] as int,
      academicYear: json['academicYear'] as String,
      academicStart: json['academicStart'] as String,
      academicEnd: json['academicEnd'] as String,
      modifiedDate: json['modifiedDate'] as String,
    );

Map<String, dynamic> _$$AccadamicYearModelImplToJson(
        _$AccadamicYearModelImpl instance) =>
    <String, dynamic>{
      'academicYearId': instance.academicYearId,
      'academicYear': instance.academicYear,
      'academicStart': instance.academicStart,
      'academicEnd': instance.academicEnd,
      'modifiedDate': instance.modifiedDate,
    };

_$ClassListModelImpl _$$ClassListModelImplFromJson(Map<String, dynamic> json) =>
    _$ClassListModelImpl(
      courseTreeId: json['courseTreeId'] as int,
      courseType: json['courseType'] as String,
      courseTypesId: json['courseTypesId'] as int,
      course: json['course'] as String,
      parentId: json['parentId'] as int,
    );

Map<String, dynamic> _$$ClassListModelImplToJson(
        _$ClassListModelImpl instance) =>
    <String, dynamic>{
      'courseTreeId': instance.courseTreeId,
      'courseType': instance.courseType,
      'courseTypesId': instance.courseTypesId,
      'course': instance.course,
      'parentId': instance.parentId,
    };
