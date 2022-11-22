
import 'package:jobseek/shared/domain/entities/company.dart';
import 'package:jobseek/shared/domain/entities/specialization.dart';
import 'package:json_annotation/json_annotation.dart';

import 'model.dart';

part 'company.g.dart';

@JsonSerializable()
class CompanyModel implements Model<Company> {
  final int id;
  final String name;
  final String email;
  final String website;
  final String phone;
  final String address;
  final String logo;
  @JsonKey(name: 'specialization_id')
  final String specializationId;

  CompanyModel(this.id, this.name, this.email, this.website, this.phone,
      this.address, this.logo, this.specializationId);

  @override
  Company toEntity() => Company(
    id, name, email, phone, '', address,
    photoUrl: logo,
    companyWebsite: website,
    specialization: Specialization(int.tryParse(specializationId)??0, '', ''),
  );

  factory CompanyModel.fromJson(Map<String, dynamic> json) => _$CompanyModelFromJson(json);
  Map<String, dynamic> toJson() => _$CompanyModelToJson(this);
}