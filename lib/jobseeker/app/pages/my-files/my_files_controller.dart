
import 'package:flutter_clean_architecture/flutter_clean_architecture.dart';
import 'package:jobseek/jobseeker/data/dummies.dart' as d;
import 'package:jobseek/shared/domain/entities/file.dart';

class JobSeekerMyFilesController extends Controller {
  // TODO: fetch data from internet
  final files = d.files;

  @override
  void initListeners() {}

  void onAdd() {}

  void onEdit(File file) {}

  void onDelete(File file) {}
}