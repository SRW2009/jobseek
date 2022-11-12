
import 'package:jobseek/shared/domain/entities/occupation.dart';
import 'package:jobseek/shared/domain/entities/user.dart';

class JobSeeker extends User {
  final bool verified;
  final String? idCardNumber;
  final String? idCardPhoto;
  final String? selfiePhoto;
  final String? selfieWithIdCardPhoto;
  final Occupation? occupation;

  JobSeeker(super.id, super.name, super.email, super.phone, super.city, {
    this.verified=false,
    this.idCardNumber,
    this.idCardPhoto,
    this.selfiePhoto,
    this.selfieWithIdCardPhoto,
    this.occupation,
  });
}