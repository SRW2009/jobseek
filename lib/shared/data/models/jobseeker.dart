
import 'package:jobseek/shared/domain/entities/jobseeker.dart';
import 'package:json_annotation/json_annotation.dart';

import 'model.dart';

part 'jobseeker.g.dart';

@JsonSerializable()
class JobSeekerModel implements Model<JobSeeker> {
  final int id;
  final String avatar;
  final String name;
  final String email;
  final String city;
  final String resume;
  final String certification;
  @JsonKey(name: 'specialization_id')
  final String specializationId;

  JobSeekerModel(this.id, this.avatar, this.name, this.email, this.city,
      this.resume, this.certification, this.specializationId);

  @override
  JobSeeker toEntity() => JobSeeker(
    id, name, email, '', city,
    photoUrl: avatar,
    resume: resume,
    certification: certification,
  );

  factory JobSeekerModel.fromJson(Map<String, dynamic> json) => _$JobSeekerModelFromJson(json);
  Map<String, dynamic> toJson() => _$JobSeekerModelToJson(this);
}