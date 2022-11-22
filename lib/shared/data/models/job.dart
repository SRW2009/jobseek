
import 'package:jobseek/shared/domain/entities/job.dart';
import 'package:json_annotation/json_annotation.dart';

import 'model.dart';

part 'job.g.dart';

@JsonSerializable()
class JobModel implements Model<Job> {
  @JsonKey(fromJson: _idFromJson)
  final int id;
  static int _idFromJson(dynamic val) => int.tryParse('$val')??0;

  @JsonKey(readValue: _readLogo)
  final String logo;
  static _readLogo(json, k) => json['company_logo'] ?? json['icon'];
  @JsonKey(readValue: _readName)
  final String name;
  static _readName(json, k) => json['company_name'] ?? json['name'];
  @JsonKey(name: 'position')
  final String? occupationName;
  @JsonKey(name: 'specialization_id')
  final String? specializationId;

  JobModel(this.id, this.logo, this.name, this.occupationName,
      this.specializationId);

  @override
  Job toEntity() => Job(id, logo, occupationName??'', name, '', '');

  factory JobModel.fromJson(Map<String, dynamic> json) => _$JobModelFromJson(json);
  Map<String, dynamic> toJson() => _$JobModelToJson(this);
}