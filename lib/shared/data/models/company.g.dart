// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'company.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CompanyModel _$CompanyModelFromJson(Map<String, dynamic> json) => CompanyModel(
      json['id'] as int,
      json['name'] as String,
      json['email'] as String,
      json['website'] as String,
      json['phone'] as String,
      json['address'] as String,
      json['logo'] as String,
      json['specialization_id'] as String,
    );

Map<String, dynamic> _$CompanyModelToJson(CompanyModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'email': instance.email,
      'website': instance.website,
      'phone': instance.phone,
      'address': instance.address,
      'logo': instance.logo,
      'specialization_id': instance.specializationId,
    };
