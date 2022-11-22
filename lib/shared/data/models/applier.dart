
import 'package:jobseek/shared/domain/entities/applier.dart';
import 'package:jobseek/shared/domain/entities/occupation.dart';
import 'package:jobseek/shared/domain/entities/specialization.dart';
import 'package:json_annotation/json_annotation.dart';

import 'model.dart';

part 'applier.g.dart';

@JsonSerializable()
class ApplierModel implements Model<Applier> {
  final int id;
  final String avatar;
  final String name;
  final String email;
  @JsonKey(name: 'specialization_id')
  final String specializationId;

  ApplierModel(
      this.id, this.avatar, this.name, this.email, this.specializationId);

  @override
  Applier toEntity() => Applier(id, avatar, name, email, '08212322XXXX',
      'Information System (Bachelor Degree) Kalimantan Institute of Technology 2020 - 2024',
      const Occupation(0, '', 'Data Analyst', Specialization.none()));

  factory ApplierModel.fromJson(Map<String, dynamic> json) => _$ApplierModelFromJson(json);
  Map<String, dynamic> toJson() => _$ApplierModelToJson(this);
}