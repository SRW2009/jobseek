
import 'package:flutter/material.dart';
import 'package:jobseek/shared/domain/entities/file.dart';
import 'package:jobseek/shared/domain/entities/job.dart';
import 'package:jobseek/resources.dart';
import 'package:jobseek/shared/domain/entities/category.dart';
import 'package:jobseek/shared/domain/entities/notification.dart' as n;
import 'package:jobseek/shared/domain/entities/occupation.dart';
import 'package:jobseek/shared/domain/entities/specialization.dart';

final jobs = [
  Job(Assets.company1, 'General Doctor', 'Midtou Hospital', LoremIpsum.generate(4), LoremIpsum.generate(5)),
  Job(Assets.company2, 'Eye Specialist Doctor', 'Bakti Husada Hospital', LoremIpsum.generate(4), LoremIpsum.generate(5)),
  Job(Assets.company3, 'Dermatologist', 'Cibitung Medika Hospital', LoremIpsum.generate(4), LoremIpsum.generate(5)),
  Job(Assets.company4, 'Surgeon', 'Bineka Hospital', LoremIpsum.generate(4), LoremIpsum.generate(5)),
  Job(Assets.company5, 'Pediatrician', 'Mary Cileungsi Hospital', LoremIpsum.generate(4), LoremIpsum.generate(5)),
  Job(Assets.company6, 'Neurologist', 'Taruna Hospital', LoremIpsum.generate(4), LoremIpsum.generate(5)),
  Job(Assets.company7, 'Gynecologist', 'Handayani Hospital', LoremIpsum.generate(4), LoremIpsum.generate(5)),
  Job(Assets.company8, 'Neurologist', 'Cibinong Hospital', LoremIpsum.generate(4), LoremIpsum.generate(5)),
];

final categories = [
  Category(Assets.category1, 'Technology'),
  Category(Assets.category2, 'Health'),
  Category(Assets.category3, 'Education'),
  Category(Assets.category4, 'Tourism'),
  Category(Assets.category5, 'Business'),
];

final notifications = [
  n.Notification(DateTime.now(), jobs[0]),
  n.Notification(DateTime.now().subtract(const Duration(days: 1)), jobs[1]),
  n.Notification(DateTime.now().subtract(const Duration(days: 2)), jobs[2]),
  n.Notification(DateTime.now().subtract(const Duration(days: 3)), jobs[3]),
  n.Notification(DateTime.now().subtract(const Duration(days: 4)), jobs[4]),
  n.Notification(DateTime.now().subtract(const Duration(days: 5)), jobs[5]),
  n.Notification(DateTime.now().subtract(const Duration(days: 6)), jobs[6]),
  n.Notification(DateTime.now().subtract(const Duration(days: 7)), jobs[7]),
];

final files = [
  File(0, 'CV', 'CV_Abyan Athar.pdf'),
  File(1, 'Resume', 'Resume_Abyan Athar.pdf'),
  File(2, 'Certification', 'Certificate_Abyan Athar.pdf'),
  File(3, 'Motivation Letter', 'Motivation Letter_Abyan Athar.pdf')
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