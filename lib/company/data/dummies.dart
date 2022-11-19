
import 'dart:math';

import 'package:flutter/material.dart';
import 'package:jobseek/resources.dart';
import 'package:jobseek/shared/domain/entities/applier.dart';
import 'package:jobseek/shared/domain/entities/category.dart';
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

final appliers = [
  Applier(Assets.company1, 'John Doe', 'johndoe@mail.com', _generatePhone(), LoremIpsum.generate(5), occupations[0]),
  Applier(Assets.company2, 'John Cena', 'johndoe@mail.com', _generatePhone(), LoremIpsum.generate(5), occupations[1]),
  Applier(Assets.company3, 'John Smith', 'johnsmith@mail.com', _generatePhone(), LoremIpsum.generate(5), occupations[2]),
  Applier(Assets.company4, 'John Cook', 'johncook@mail.com', _generatePhone(), LoremIpsum.generate(5), occupations[3]),
  Applier(Assets.company5, 'John Dore', 'johndore@mail.com', _generatePhone(), LoremIpsum.generate(5), occupations[4]),
  Applier(Assets.company6, 'John Johnson', 'johnjohnson@mail.com', _generatePhone(), LoremIpsum.generate(5), occupations[5]),
];

final categories = [
  Category(Assets.category1, 'Technology'),
  Category(Assets.category2, 'Health'),
  Category(Assets.category3, 'Education'),
  Category(Assets.category4, 'Tourism'),
  Category(Assets.category5, 'Business'),
];

final notifications = [
  n.Notification(DateTime.now(), appliers[0]),
  n.Notification(DateTime.now().subtract(const Duration(days: 1)), appliers[1]),
  n.Notification(DateTime.now().subtract(const Duration(days: 2)), appliers[2]),
  n.Notification(DateTime.now().subtract(const Duration(days: 3)), appliers[3]),
  n.Notification(DateTime.now().subtract(const Duration(days: 4)), appliers[4]),
  n.Notification(DateTime.now().subtract(const Duration(days: 5)), appliers[5]),
];

final specializations = [
  Specialization(Icons.monitor, 'Technology'),
  Specialization(Icons.monitor_heart_outlined, 'Health'),
  Specialization(Icons.school, 'Education'),
  Specialization(Icons.spa, 'Tourism'),
  Specialization(Icons.account_balance, 'Business'),
  Specialization(Icons.water_drop, 'Engineering'),
  Specialization(Icons.gavel, 'Law'),
  Specialization(Icons.color_lens, 'Design'),
];

final occupations = [
  Occupation(Assets.category2, 'Administration', specializations[2]),
  Occupation(Assets.category2, 'Doctor', specializations[2]),
  Occupation(Assets.category2, 'Dentist', specializations[2]),
  Occupation(Assets.category2, 'Midwife', specializations[2]),
  Occupation(Assets.category2, 'Nurse', specializations[2]),
  Occupation(Assets.category2, 'Pharmacist', specializations[2]),
];