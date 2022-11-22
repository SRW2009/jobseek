
import 'package:jobseek/shared/domain/entities/specialization.dart';
import 'package:json_annotation/json_annotation.dart';

import 'model.dart';

part 'specialization.g.dart';

@JsonSerializable()
class SpecializationModel implements Model<Specialization> {
  final int id;
  final String icon;
  final String name;

  SpecializationModel(this.id, this.icon, this.name);

  @override
  Specialization toEntity() => Specialization(id, icon, name);

  factory SpecializationModel.fromJson(Map<String, dynamic> json) => _$SpecializationModelFromJson(json);
  Map<String, dynamic> toJson() => _$SpecializationModelToJson(this);
}