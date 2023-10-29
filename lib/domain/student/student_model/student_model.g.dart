// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'student_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

StudentModel _$StudentModelFromJson(Map<String, dynamic> json) => StudentModel(
      academicYearId: json['academicYearId'] as String?,
      address: json['address'] as String?,
      createdBy: json['createdBy'] as String?,
      emailId: json['emailId'] as String?,
      institutionId: json['institutionId'] as int?,
      mobileNo: json['mobileNo'] as String?,
      name: json['name'] as String?,
      password: json['password'] as String?,
      classId: json['classId'] as String?,
      userClassId: json['userClassId'] as int?,
      userCode: json['userCode'] as String?,
      userId: json['userId'] as String?,
      userType: json['userType'] as String?,
      whatsappNo: json['whatsappNo'] as String?,
    );

Map<String, dynamic> _$StudentModelToJson(StudentModel instance) =>
    <String, dynamic>{
      'academicYearId': instance.academicYearId,
      'address': instance.address,
      'createdBy': instance.createdBy,
      'emailId': instance.emailId,
      'institutionId': instance.institutionId,
      'mobileNo': instance.mobileNo,
      'name': instance.name,
      'password': instance.password,
      'classId': instance.classId,
      'userClassId': instance.userClassId,
      'userCode': instance.userCode,
      'userId': instance.userId,
      'userType': instance.userType,
      'whatsappNo': instance.whatsappNo,
    };
