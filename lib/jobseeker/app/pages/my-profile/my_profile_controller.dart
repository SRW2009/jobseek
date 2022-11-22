
import 'package:jobseek/shared/app/widgets/common/data_controller.dart';
import 'package:jobseek/shared/domain/entities/applier.dart';

import 'my_profile_presenter.dart';
import 'my_profile_page.dart';

class JobSeekerMyProfileController extends DataController<Applier, JobSeekerMyProfilePage> {

  final JobSeekerMyProfilePresenter _presenter;
  JobSeekerMyProfileController(applierRepo)
      : _presenter = JobSeekerMyProfilePresenter(applierRepo);

  bool editable = false;

  @override
  void initListeners() {
    _presenter.getProfileCallback = getDataCallback;
  }

  @override
  void onReload() {
    if (widget?.applier!=null) {
      data = widget?.applier;
      setDataStateSuccess();
    } else {
      editable = true;
      setDataStateLoading();
      _presenter.getApplier(1);
    }
  }

  void onEditImage() {}

  void onEditEducation() {}

  void onDeleteEducation() {}

  void onHire() {}
}