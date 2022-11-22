// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'applier.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ApplierModel _$ApplierModelFromJson(Map<String, dynamic> json) => ApplierModel(
      json['id'] as int,
      json['avatar'] as String,
      json['name'] as String,
      json['email'] as String,
      json['specialization_id'] as String,
    );

Map<String, dynamic> _$ApplierModelToJson(ApplierModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'avatar': instance.avatar,
      'name': instance.name,
      'email': instance.email,
      'specialization_id': instance.specializationId,
    };
