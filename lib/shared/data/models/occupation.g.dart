// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'occupation.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

OccupationModel _$OccupationModelFromJson(Map<String, dynamic> json) =>
    OccupationModel(
      json['id'] as int,
      json['icon'] as String,
      json['name'] as String,
      json['specialization_id'] as String,
    );

Map<String, dynamic> _$OccupationModelToJson(OccupationModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'icon': instance.icon,
      'name': instance.name,
      'specialization_id': instance.specializationId,
    };
