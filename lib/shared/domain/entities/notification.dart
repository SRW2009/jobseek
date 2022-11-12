

class Notification<T> {
  final DateTime notifiedAt;
  final T detail;

  Notification(this.notifiedAt, this.detail);
}