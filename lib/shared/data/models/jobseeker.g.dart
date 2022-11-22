// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'jobseeker.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

JobSeekerModel _$JobSeekerModelFromJson(Map<String, dynamic> json) =>
    JobSeekerModel(
      json['id'] as int,
      json['avatar'] as String,
      json['name'] as String,
      json['email'] as String,
      json['city'] as String,
      json['resume'] as String,
      json['certification'] as String,
      json['specialization_id'] as String,
    );

Map<String, dynamic> _$JobSeekerModelToJson(JobSeekerModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'avatar': instance.avatar,
      'name': instance.name,
      'email': instance.email,
      'city': instance.city,
      'resume': instance.resume,
      'certification': instance.certification,
      'specialization_id': instance.specializationId,
    };
