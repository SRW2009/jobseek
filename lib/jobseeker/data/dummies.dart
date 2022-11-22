
import 'package:jobseek/resources.dart';
import 'package:jobseek/shared/domain/entities/file.dart';
import 'package:jobseek/shared/domain/entities/job.dart';
import 'package:jobseek/shared/domain/entities/notification.dart' as n;
import 'package:jobseek/shared/domain/entities/occupation.dart';
import 'package:jobseek/shared/domain/entities/specialization.dart';

const jobAvatar = 'https://t3.ftcdn.net/jpg/03/39/45/96/360_F_339459697_XAFacNQmwnvJRqe1Fe9VOptPWMUxlZP8.jpg';
final jobs = [
  Job(0, jobAvatar, 'General Doctor', 'Midtou Hospital', LoremIpsum.generate(4), LoremIpsum.generate(5)),
  Job(1, jobAvatar, 'Eye Specialist Doctor', 'Bakti Husada Hospital', LoremIpsum.generate(4), LoremIpsum.generate(5)),
  Job(2, jobAvatar, 'Dermatologist', 'Cibitung Medika Hospital', LoremIpsum.generate(4), LoremIpsum.generate(5)),
  Job(3, jobAvatar, 'Surgeon', 'Bineka Hospital', LoremIpsum.generate(4), LoremIpsum.generate(5)),
  Job(4, jobAvatar, 'Pediatrician', 'Mary Cileungsi Hospital', LoremIpsum.generate(4), LoremIpsum.generate(5)),
  Job(5, jobAvatar, 'Neurologist', 'Taruna Hospital', LoremIpsum.generate(4), LoremIpsum.generate(5)),
  Job(6, jobAvatar, 'Gynecologist', 'Handayani Hospital', LoremIpsum.generate(4), LoremIpsum.generate(5)),
  Job(7, jobAvatar, 'Neurologist', 'Cibinong Hospital', LoremIpsum.generate(4), LoremIpsum.generate(5)),
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

const files = [
  File(0, 'CV', 'CV_Abyan Athar.pdf'),
  File(1, 'Resume', 'Resume_Abyan Athar.pdf'),
  File(2, 'Certification', 'Certificate_Abyan Athar.pdf'),
  File(3, 'Motivation Letter', 'Motivation Letter_Abyan Athar.pdf')
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