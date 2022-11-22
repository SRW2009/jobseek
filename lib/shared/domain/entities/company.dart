
import 'package:jobseek/shared/domain/entities/specialization.dart';
import 'package:jobseek/shared/domain/entities/user.dart';

class Company extends User {
  final String address;

  final bool verified;
  final String? taxPayerIdentificationNumber;
  final String? taxPayerIdentificationFile;
  final String? companyPortofolioFile;
  final String? deedOfIncorporationFile;
  final String? companyDomicileCertificateFile;
  final String? certificateOfCompanyRegistration;
  final Specialization? specialization;

  final String? companyDescription;
  final String? companyWebsite;
  final String? contactPersonPhone;

  Company(super.id, super.name, super.email, super.phone, super.city, this.address, {
    super.photoUrl,
    this.verified=false,
    this.taxPayerIdentificationNumber,
    this.taxPayerIdentificationFile,
    this.companyPortofolioFile,
    this.deedOfIncorporationFile,
    this.companyDomicileCertificateFile,
    this.certificateOfCompanyRegistration,
    this.specialization,
    this.companyDescription,
    this.companyWebsite,
    this.contactPersonPhone,
  });
}