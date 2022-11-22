
class Job {
  final int id;
  final String image;
  final String occupation;
  final String companyName;
  final String description;
  final String requirement;

  const Job(this.id, this.image, this.occupation, this.companyName, this.description,
      this.requirement);

  const Job.none()
      : id=0, image='', occupation='',
        companyName='', description='', requirement='';
}