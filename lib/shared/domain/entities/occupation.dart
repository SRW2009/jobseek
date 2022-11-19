
import 'specialization.dart';

class Occupation {
  //final int id;
  final String image;
  final String title;
  final Specialization specialization;

  const Occupation(//this.id,
      this.image, this.title, this.specialization);

  const Occupation.none()
      : image = '',
        title = '',
        specialization = const Specialization.none();
}