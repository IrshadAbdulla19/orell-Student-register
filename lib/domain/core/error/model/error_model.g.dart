// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'error_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ErrorModelImpl _$$ErrorModelImplFromJson(Map<String, dynamic> json) =>
    _$ErrorModelImpl(
      timestamp: json['timestamp'] as String,
      status: json['status'] as int,
      error: json['error'] as String,
      message: json['message'] as String,
      path: json['path'] as String,
    );

Map<String, dynamic> _$$ErrorModelImplToJson(_$ErrorModelImpl instance) =>
    <String, dynamic>{
      'timestamp': instance.timestamp,
      'status': instance.status,
      'error': instance.error,
      'message': instance.message,
      'path': instance.path,
    };
