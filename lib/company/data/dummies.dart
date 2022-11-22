
import 'dart:math';

import 'package:jobseek/resources.dart';
import 'package:jobseek/shared/domain/entities/applier.dart';
import 'package:jobseek/shared/domain/entities/notification.dart' as n;
import 'package:jobseek/shared/domain/entities/occupation.dart';
import 'package:jobseek/shared/domain/entities/specialization.dart';

String _generatePhone() {
  Random r = Random();
  var p = '08';
  for (var i = 0; i < 10; ++i) {
    p += r.nextInt(10).toString();
  }
  return p;
}

const applierAvatar = 'https://t3.ftcdn.net/jpg/03/39/45/96/360_F_339459697_XAFacNQmwnvJRqe1Fe9VOptPWMUxlZP8.jpg';
final appliers = [
  Applier(0, applierAvatar, 'John Doe', 'johndoe@mail.com', _generatePhone(), LoremIpsum.generate(5), occupations[0]),
  Applier(1, applierAvatar, 'John Cena', 'johndoe@mail.com', _generatePhone(), LoremIpsum.generate(5), occupations[1]),
  Applier(2, applierAvatar, 'John Smith', 'johnsmith@mail.com', _generatePhone(), LoremIpsum.generate(5), occupations[2]),
  Applier(3, applierAvatar, 'John Cook', 'johncook@mail.com', _generatePhone(), LoremIpsum.generate(5), occupations[3]),
  Applier(4, applierAvatar, 'John Dore', 'johndore@mail.com', _generatePhone(), LoremIpsum.generate(5), occupations[4]),
  Applier(5, applierAvatar, 'John Johnson', 'johnjohnson@mail.com', _generatePhone(), LoremIpsum.generate(5), occupations[5]),
];

final notifications = [
  n.Notification(DateTime.now(), appliers[0]),
  n.Notification(DateTime.now().subtract(const Duration(days: 1)), appliers[1]),
  n.Notification(DateTime.now().subtract(const Duration(days: 2)), appliers[2]),
  n.Notification(DateTime.now().subtract(const Duration(days: 3)), appliers[3]),
  n.Notification(DateTime.now().subtract(const Duration(days: 4)), appliers[4]),
  n.Notification(DateTime.now().subtract(const Duration(days: 5)), appliers[5]),
];

const specializations = [
  Specialization(0, 'Icons.monitor', 'Technology'),
  Specialization(1, 'Icons.monitor_heart_outlined', 'Health'),
  Specialization(2, 'Icons.school', 'Education'),
  Specialization(3, 'Icons.spa', 'Tourism'),
  Specialization(4, 'Icons.account_balance', 'Business'),
  Specialization(5, 'Icons.water_drop', 'Engineering'),
  Specialization(6, 'Icons.gavel', 'Law'),
  Specialization(7, 'Icons.color_lens', 'Design'),
];

final occupations = [
  Occupation(0, Assets.category2, 'Administration', specializations[1]),
  Occupation(1, Assets.category2, 'Doctor', specializations[1]),
  Occupation(2, Assets.category2, 'Dentist', specializations[1]),
  Occupation(3, Assets.category2, 'Midwife', specializations[1]),
  Occupation(4, Assets.category2, 'Nurse', specializations[1]),
  Occupation(5, Assets.category2, 'Pharmacist', specializations[1]),
];