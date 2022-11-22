
class Specialization {
  final int id;
  final String image;
  final String title;

  const Specialization(this.id, this.image, this.title);

  const Specialization.none()
      : id = -1,
        image = '',
        title = '';
}