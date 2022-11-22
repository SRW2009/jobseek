// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'job.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

JobModel _$JobModelFromJson(Map<String, dynamic> json) => JobModel(
      JobModel._idFromJson(json['id']),
      JobModel._readLogo(json, 'logo') as String,
      JobModel._readName(json, 'name') as String,
      json['position'] as String?,
      json['specialization_id'] as String?,
    );

Map<String, dynamic> _$JobModelToJson(JobModel instance) => <String, dynamic>{
      'id': instance.id,
      'logo': instance.logo,
      'name': instance.name,
      'position': instance.occupationName,
      'specialization_id': instance.specializationId,
    };
