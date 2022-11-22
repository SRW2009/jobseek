// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'job-detail.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

JobDetailModel _$JobDetailModelFromJson(Map<String, dynamic> json) =>
    JobDetailModel(
      json['id'] as int,
      json['description'] as String,
      json['company_id'] as String,
      json['job_id'] as String,
      json['position'] as String,
      JobModel.fromJson(json['job'] as Map<String, dynamic>),
      CompanyModel.fromJson(json['company'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$JobDetailModelToJson(JobDetailModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'description': instance.description,
      'company_id': instance.companyId,
      'job_id': instance.jobId,
      'position': instance.occupationName,
      'job': instance.jobModel,
      'company': instance.companyModel,
    };
