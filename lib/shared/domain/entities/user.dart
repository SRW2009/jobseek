
class User {
  final int id;
  final String name;
  final String email;
  final String phone;
  final String city;
  final String? photoUrl;

  User(this.id, this.name, this.email, this.phone, this.city, {this.photoUrl});
}