// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'strudent_register_models.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

AccadamicYearModel _$AccadamicYearModelFromJson(Map<String, dynamic> json) {
  return _AccadamicYearModel.fromJson(json);
}

/// @nodoc
mixin _$AccadamicYearModel {
  @JsonKey(name: "academicYearId")
  int get academicYearId => throw _privateConstructorUsedError;
  @JsonKey(name: "academicYear")
  String get academicYear => throw _privateConstructorUsedError;
  @JsonKey(name: "academicStart")
  String get academicStart => throw _privateConstructorUsedError;
  @JsonKey(name: "academicEnd")
  String get academicEnd => throw _privateConstructorUsedError;
  @JsonKey(name: "modifiedDate")
  String get modifiedDate => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AccadamicYearModelCopyWith<AccadamicYearModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AccadamicYearModelCopyWith<$Res> {
  factory $AccadamicYearModelCopyWith(
          AccadamicYearModel value, $Res Function(AccadamicYearModel) then) =
      _$AccadamicYearModelCopyWithImpl<$Res, AccadamicYearModel>;
  @useResult
  $Res call(
      {@JsonKey(name: "academicYearId") int academicYearId,
      @JsonKey(name: "academicYear") String academicYear,
      @JsonKey(name: "academicStart") String academicStart,
      @JsonKey(name: "academicEnd") String academicEnd,
      @JsonKey(name: "modifiedDate") String modifiedDate});
}

/// @nodoc
class _$AccadamicYearModelCopyWithImpl<$Res, $Val extends AccadamicYearModel>
    implements $AccadamicYearModelCopyWith<$Res> {
  _$AccadamicYearModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? academicYearId = null,
    Object? academicYear = null,
    Object? academicStart = null,
    Object? academicEnd = null,
    Object? modifiedDate = null,
  }) {
    return _then(_value.copyWith(
      academicYearId: null == academicYearId
          ? _value.academicYearId
          : academicYearId // ignore: cast_nullable_to_non_nullable
              as int,
      academicYear: null == academicYear
          ? _value.academicYear
          : academicYear // ignore: cast_nullable_to_non_nullable
              as String,
      academicStart: null == academicStart
          ? _value.academicStart
          : academicStart // ignore: cast_nullable_to_non_nullable
              as String,
      academicEnd: null == academicEnd
          ? _value.academicEnd
          : academicEnd // ignore: cast_nullable_to_non_nullable
              as String,
      modifiedDate: null == modifiedDate
          ? _value.modifiedDate
          : modifiedDate // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AccadamicYearModelImplCopyWith<$Res>
    implements $AccadamicYearModelCopyWith<$Res> {
  factory _$$AccadamicYearModelImplCopyWith(_$AccadamicYearModelImpl value,
          $Res Function(_$AccadamicYearModelImpl) then) =
      __$$AccadamicYearModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "academicYearId") int academicYearId,
      @JsonKey(name: "academicYear") String academicYear,
      @JsonKey(name: "academicStart") String academicStart,
      @JsonKey(name: "academicEnd") String academicEnd,
      @JsonKey(name: "modifiedDate") String modifiedDate});
}

/// @nodoc
class __$$AccadamicYearModelImplCopyWithImpl<$Res>
    extends _$AccadamicYearModelCopyWithImpl<$Res, _$AccadamicYearModelImpl>
    implements _$$AccadamicYearModelImplCopyWith<$Res> {
  __$$AccadamicYearModelImplCopyWithImpl(_$AccadamicYearModelImpl _value,
      $Res Function(_$AccadamicYearModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? academicYearId = null,
    Object? academicYear = null,
    Object? academicStart = null,
    Object? academicEnd = null,
    Object? modifiedDate = null,
  }) {
    return _then(_$AccadamicYearModelImpl(
      academicYearId: null == academicYearId
          ? _value.academicYearId
          : academicYearId // ignore: cast_nullable_to_non_nullable
              as int,
      academicYear: null == academicYear
          ? _value.academicYear
          : academicYear // ignore: cast_nullable_to_non_nullable
              as String,
      academicStart: null == academicStart
          ? _value.academicStart
          : academicStart // ignore: cast_nullable_to_non_nullable
              as String,
      academicEnd: null == academicEnd
          ? _value.academicEnd
          : academicEnd // ignore: cast_nullable_to_non_nullable
              as String,
      modifiedDate: null == modifiedDate
          ? _value.modifiedDate
          : modifiedDate // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AccadamicYearModelImpl implements _AccadamicYearModel {
  const _$AccadamicYearModelImpl(
      {@JsonKey(name: "academicYearId") required this.academicYearId,
      @JsonKey(name: "academicYear") required this.academicYear,
      @JsonKey(name: "academicStart") required this.academicStart,
      @JsonKey(name: "academicEnd") required this.academicEnd,
      @JsonKey(name: "modifiedDate") required this.modifiedDate});

  factory _$AccadamicYearModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$AccadamicYearModelImplFromJson(json);

  @override
  @JsonKey(name: "academicYearId")
  final int academicYearId;
  @override
  @JsonKey(name: "academicYear")
  final String academicYear;
  @override
  @JsonKey(name: "academicStart")
  final String academicStart;
  @override
  @JsonKey(name: "academicEnd")
  final String academicEnd;
  @override
  @JsonKey(name: "modifiedDate")
  final String modifiedDate;

  @override
  String toString() {
    return 'AccadamicYearModel(academicYearId: $academicYearId, academicYear: $academicYear, academicStart: $academicStart, academicEnd: $academicEnd, modifiedDate: $modifiedDate)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AccadamicYearModelImpl &&
            (identical(other.academicYearId, academicYearId) ||
                other.academicYearId == academicYearId) &&
            (identical(other.academicYear, academicYear) ||
                other.academicYear == academicYear) &&
            (identical(other.academicStart, academicStart) ||
                other.academicStart == academicStart) &&
            (identical(other.academicEnd, academicEnd) ||
                other.academicEnd == academicEnd) &&
            (identical(other.modifiedDate, modifiedDate) ||
                other.modifiedDate == modifiedDate));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, academicYearId, academicYear,
      academicStart, academicEnd, modifiedDate);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AccadamicYearModelImplCopyWith<_$AccadamicYearModelImpl> get copyWith =>
      __$$AccadamicYearModelImplCopyWithImpl<_$AccadamicYearModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AccadamicYearModelImplToJson(
      this,
    );
  }
}

abstract class _AccadamicYearModel implements AccadamicYearModel {
  const factory _AccadamicYearModel(
          {@JsonKey(name: "academicYearId") required final int academicYearId,
          @JsonKey(name: "academicYear") required final String academicYear,
          @JsonKey(name: "academicStart") required final String academicStart,
          @JsonKey(name: "academicEnd") required final String academicEnd,
          @JsonKey(name: "modifiedDate") required final String modifiedDate}) =
      _$AccadamicYearModelImpl;

  factory _AccadamicYearModel.fromJson(Map<String, dynamic> json) =
      _$AccadamicYearModelImpl.fromJson;

  @override
  @JsonKey(name: "academicYearId")
  int get academicYearId;
  @override
  @JsonKey(name: "academicYear")
  String get academicYear;
  @override
  @JsonKey(name: "academicStart")
  String get academicStart;
  @override
  @JsonKey(name: "academicEnd")
  String get academicEnd;
  @override
  @JsonKey(name: "modifiedDate")
  String get modifiedDate;
  @override
  @JsonKey(ignore: true)
  _$$AccadamicYearModelImplCopyWith<_$AccadamicYearModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ClassListModel _$ClassListModelFromJson(Map<String, dynamic> json) {
  return _ClassListModel.fromJson(json);
}

/// @nodoc
mixin _$ClassListModel {
  @JsonKey(name: "courseTreeId")
  int get courseTreeId => throw _privateConstructorUsedError;
  @JsonKey(name: "courseType")
  String get courseType => throw _privateConstructorUsedError;
  @JsonKey(name: "courseTypesId")
  int get courseTypesId => throw _privateConstructorUsedError;
  @JsonKey(name: "course")
  String get course => throw _privateConstructorUsedError;
  @JsonKey(name: "parentId")
  int get parentId => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ClassListModelCopyWith<ClassListModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ClassListModelCopyWith<$Res> {
  factory $ClassListModelCopyWith(
          ClassListModel value, $Res Function(ClassListModel) then) =
      _$ClassListModelCopyWithImpl<$Res, ClassListModel>;
  @useResult
  $Res call(
      {@JsonKey(name: "courseTreeId") int courseTreeId,
      @JsonKey(name: "courseType") String courseType,
      @JsonKey(name: "courseTypesId") int courseTypesId,
      @JsonKey(name: "course") String course,
      @JsonKey(name: "parentId") int parentId});
}

/// @nodoc
class _$ClassListModelCopyWithImpl<$Res, $Val extends ClassListModel>
    implements $ClassListModelCopyWith<$Res> {
  _$ClassListModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? courseTreeId = null,
    Object? courseType = null,
    Object? courseTypesId = null,
    Object? course = null,
    Object? parentId = null,
  }) {
    return _then(_value.copyWith(
      courseTreeId: null == courseTreeId
          ? _value.courseTreeId
          : courseTreeId // ignore: cast_nullable_to_non_nullable
              as int,
      courseType: null == courseType
          ? _value.courseType
          : courseType // ignore: cast_nullable_to_non_nullable
              as String,
      courseTypesId: null == courseTypesId
          ? _value.courseTypesId
          : courseTypesId // ignore: cast_nullable_to_non_nullable
              as int,
      course: null == course
          ? _value.course
          : course // ignore: cast_nullable_to_non_nullable
              as String,
      parentId: null == parentId
          ? _value.parentId
          : parentId // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ClassListModelImplCopyWith<$Res>
    implements $ClassListModelCopyWith<$Res> {
  factory _$$ClassListModelImplCopyWith(_$ClassListModelImpl value,
          $Res Function(_$ClassListModelImpl) then) =
      __$$ClassListModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "courseTreeId") int courseTreeId,
      @JsonKey(name: "courseType") String courseType,
      @JsonKey(name: "courseTypesId") int courseTypesId,
      @JsonKey(name: "course") String course,
      @JsonKey(name: "parentId") int parentId});
}

/// @nodoc
class __$$ClassListModelImplCopyWithImpl<$Res>
    extends _$ClassListModelCopyWithImpl<$Res, _$ClassListModelImpl>
    implements _$$ClassListModelImplCopyWith<$Res> {
  __$$ClassListModelImplCopyWithImpl(
      _$ClassListModelImpl _value, $Res Function(_$ClassListModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? courseTreeId = null,
    Object? courseType = null,
    Object? courseTypesId = null,
    Object? course = null,
    Object? parentId = null,
  }) {
    return _then(_$ClassListModelImpl(
      courseTreeId: null == courseTreeId
          ? _value.courseTreeId
          : courseTreeId // ignore: cast_nullable_to_non_nullable
              as int,
      courseType: null == courseType
          ? _value.courseType
          : courseType // ignore: cast_nullable_to_non_nullable
              as String,
      courseTypesId: null == courseTypesId
          ? _value.courseTypesId
          : courseTypesId // ignore: cast_nullable_to_non_nullable
              as int,
      course: null == course
          ? _value.course
          : course // ignore: cast_nullable_to_non_nullable
              as String,
      parentId: null == parentId
          ? _value.parentId
          : parentId // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ClassListModelImpl implements _ClassListModel {
  const _$ClassListModelImpl(
      {@JsonKey(name: "courseTreeId") required this.courseTreeId,
      @JsonKey(name: "courseType") required this.courseType,
      @JsonKey(name: "courseTypesId") required this.courseTypesId,
      @JsonKey(name: "course") required this.course,
      @JsonKey(name: "parentId") required this.parentId});

  factory _$ClassListModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$ClassListModelImplFromJson(json);

  @override
  @JsonKey(name: "courseTreeId")
  final int courseTreeId;
  @override
  @JsonKey(name: "courseType")
  final String courseType;
  @override
  @JsonKey(name: "courseTypesId")
  final int courseTypesId;
  @override
  @JsonKey(name: "course")
  final String course;
  @override
  @JsonKey(name: "parentId")
  final int parentId;

  @override
  String toString() {
    return 'ClassListModel(courseTreeId: $courseTreeId, courseType: $courseType, courseTypesId: $courseTypesId, course: $course, parentId: $parentId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ClassListModelImpl &&
            (identical(other.courseTreeId, courseTreeId) ||
                other.courseTreeId == courseTreeId) &&
            (identical(other.courseType, courseType) ||
                other.courseType == courseType) &&
            (identical(other.courseTypesId, courseTypesId) ||
                other.courseTypesId == courseTypesId) &&
            (identical(other.course, course) || other.course == course) &&
            (identical(other.parentId, parentId) ||
                other.parentId == parentId));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, courseTreeId, courseType, courseTypesId, course, parentId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ClassListModelImplCopyWith<_$ClassListModelImpl> get copyWith =>
      __$$ClassListModelImplCopyWithImpl<_$ClassListModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ClassListModelImplToJson(
      this,
    );
  }
}

abstract class _ClassListModel implements ClassListModel {
  const factory _ClassListModel(
          {@JsonKey(name: "courseTreeId") required final int courseTreeId,
          @JsonKey(name: "courseType") required final String courseType,
          @JsonKey(name: "courseTypesId") required final int courseTypesId,
          @JsonKey(name: "course") required final String course,
          @JsonKey(name: "parentId") required final int parentId}) =
      _$ClassListModelImpl;

  factory _ClassListModel.fromJson(Map<String, dynamic> json) =
      _$ClassListModelImpl.fromJson;

  @override
  @JsonKey(name: "courseTreeId")
  int get courseTreeId;
  @override
  @JsonKey(name: "courseType")
  String get courseType;
  @override
  @JsonKey(name: "courseTypesId")
  int get courseTypesId;
  @override
  @JsonKey(name: "course")
  String get course;
  @override
  @JsonKey(name: "parentId")
  int get parentId;
  @override
  @JsonKey(ignore: true)
  _$$ClassListModelImplCopyWith<_$ClassListModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
