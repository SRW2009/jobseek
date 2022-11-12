
import 'package:flutter_clean_architecture/flutter_clean_architecture.dart';
import 'package:jobseek/jobseeker/data/dummies.dart' as d;
import 'package:jobseek/shared/domain/entities/category.dart';

class JobSeekerHomeUISearchController extends Controller {
  // TODO: fetch data from internet
  final List<Category> categories = d.categories;

  @override
  void initListeners() {}

  // TODO: implement on search changed(?)
  void onSearchChanged(String query) {}

  // TODO: implement on select category
  void onSelectCategory(Category category) {}
}