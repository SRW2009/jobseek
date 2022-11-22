
import 'package:jobseek/shared/domain/entities/job.dart';
import 'package:json_annotation/json_annotation.dart';

import 'company.dart';
import 'job.dart';
import 'model.dart';

part 'job-detail.g.dart';

@JsonSerializable()
class JobDetailModel implements Model<Job> {
  final int id;
  final String description;
  @JsonKey(name: 'company_id')
  final String companyId;
  @JsonKey(name: 'job_id')
  final String jobId;
  @JsonKey(name: 'position')
  final String occupationName;
  @JsonKey(name: 'job')
  final JobModel jobModel;
  @JsonKey(name: 'company')
  final CompanyModel companyModel;

  JobDetailModel(this.id, this.description, this.companyId, this.jobId,
      this.occupationName, this.jobModel, this.companyModel);

  @override
  Job toEntity() => Job(id, companyModel.logo, occupationName, companyModel.name, description, '');

  factory JobDetailModel.fromJson(Map<String, dynamic> json) => _$JobDetailModelFromJson(json);
  Map<String, dynamic> toJson() => _$JobDetailModelToJson(this);
}