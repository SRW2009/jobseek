
import 'package:jobseek/shared/domain/entities/occupation.dart';

class Applier {
  final int id;
  final String image;
  final String name;
  final String email;
  final String phone;
  final String education;
  final Occupation occupation;

  const Applier(this.id, this.image, this.name, this.email, this.phone, this.education,
      this.occupation);
}