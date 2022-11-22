
import 'package:jobseek/shared/domain/entities/occupation.dart';
import 'package:jobseek/shared/domain/entities/specialization.dart';
import 'package:json_annotation/json_annotation.dart';

import 'model.dart';

part 'occupation.g.dart';

@JsonSerializable()
class OccupationModel implements Model<Occupation> {
  final int id;
  final String icon;
  final String name;
  @JsonKey(name: 'specialization_id')
  final String specializationId;

  OccupationModel(this.id, this.icon, this.name, this.specializationId);

  @override
  Occupation toEntity() => Occupation(id, icon, name, Specialization(int.tryParse(specializationId)??0, '', ''));

  factory OccupationModel.fromJson(Map<String, dynamic> json) => _$OccupationModelFromJson(json);
  Map<String, dynamic> toJson() => _$OccupationModelToJson(this);
}